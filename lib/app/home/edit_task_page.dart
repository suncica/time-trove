import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:time_trove_app/app/home/bloc/task_cubit.dart';
import 'package:time_trove_app/app/home/bloc/task_state.dart';
import 'package:time_trove_app/app/home/model/task_dto.dart';
import 'package:time_trove_app/common/colors/colors.dart';
import 'package:time_trove_app/common/constants/ui_dimenssions.dart';
import 'package:time_trove_app/common/di/service_locator.dart';
import 'package:time_trove_app/common/widgets/task_level.dart';
import 'package:time_trove_app/common/widgets/tt_elevated_button.dart';
import 'package:time_trove_app/common/widgets/tt_text_form_field.dart';

enum Priority { High, Medium, Low }

class EditTaskPageArguments {
  final TaskResponseDto taskItem;
  EditTaskPageArguments(
    this.taskItem,
  );
}

class EditTaskPage extends StatefulWidget {
  final EditTaskPageArguments arguments;
  const EditTaskPage({super.key, required this.arguments});
  static const String routeName = '/edit_task';

  @override
  State<EditTaskPage> createState() => _EditTaskPageState();
}

class _EditTaskPageState extends State<EditTaskPage> {
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;
  int selectedRadio = 0;
  int selectedStatus = 0;
  Color selectedColor = TTColors.primaryColor;
  Color unselectedColor = Colors.grey.shade400;

  @override
  Widget build(BuildContext context) {
    final taskItem = widget.arguments.taskItem;
    final TextEditingController _titleController =
        TextEditingController(text: taskItem.title);
    final TextEditingController _descriptionController =
        TextEditingController(text: taskItem.description);

    return BlocProvider<TaskCubit>(
      create: (context) => locator.get<TaskCubit>(),
      child: BlocConsumer<TaskCubit, TaskState>(
        listener: (context, state) {
          state.mapOrNull(
            successFetchingEditedTask: (value) {
              Navigator.of(context).pop();
            },
            successDeletingTask: (value) async {
              Navigator.of(context).pop();
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)?.edit_task ?? '',
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () async {
                      await context
                          .read<TaskCubit>()
                          .deleteTaskById(taskItem.id);
                      context.read<TaskCubit>();
                      setState(() {});
                    },
                    child: Text(
                      AppLocalizations.of(context)?.remove_task ?? '',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
              leading: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.only(
                left: UIDimensions.universalSpacingM,
                right: UIDimensions.universalSpacingM,
                bottom: UIDimensions.universalSpacingXL,
              ),
              child: SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: UIDimensions.universalSpacingL),
                        child: Text(AppLocalizations.of(context)?.status ?? '',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: 0,
                                groupValue: selectedStatus,
                                activeColor: selectedStatus == 0
                                    ? selectedColor
                                    : unselectedColor,
                                onChanged: (int? value) {
                                  setState(() {
                                    selectedStatus = value!;
                                  });
                                },
                              ),
                              TaskLevel(
                                  color: TTColors.greenColor,
                                  textColor: TTColors.darkGreenColor,
                                  title: _titleFromStatusLevel(0))
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: selectedStatus,
                                activeColor: selectedStatus == 1
                                    ? selectedColor
                                    : unselectedColor,
                                onChanged: (int? value) {
                                  setState(() {
                                    selectedStatus = value!;
                                  });
                                },
                              ),
                              TaskLevel(
                                  color: TTColors.redColor,
                                  textColor: TTColors.darkRedColor,
                                  title: _titleFromStatusLevel(1))
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: UIDimensions.universalSpacingL),
                        child: Text(
                            AppLocalizations.of(context)?.task_etails ?? '',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(children: [
                          TTTextInputField(
                            controller: _titleController,
                            textCapitalization: TextCapitalization.sentences,
                          ),
                          const SizedBox(
                            height: UIDimensions.universalSpacingL,
                          ),
                          TextFormField(
                            controller: _descriptionController,
                            minLines: 8,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                              errorMaxLines: 3,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 18),
                              hintStyle: TextStyle(color: Colors.grey.shade900),
                            ),
                            autocorrect: false,
                            textCapitalization: TextCapitalization.sentences,
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: UIDimensions.universalSpacingL,
                      ),
                      Text(
                        AppLocalizations.of(context)?.priority ?? '',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: 0,
                                groupValue: selectedRadio,
                                activeColor: selectedRadio == 0
                                    ? selectedColor
                                    : unselectedColor,
                                onChanged: (int? value) {
                                  setState(() {
                                    selectedRadio = value!;
                                  });
                                },
                              ),
                              TaskLevel(
                                  color: TTColors.greenColor,
                                  textColor: TTColors.darkGreenColor,
                                  title: _titleFromPriorityLevel(0))
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: selectedRadio,
                                activeColor: selectedRadio == 1
                                    ? selectedColor
                                    : unselectedColor,
                                onChanged: (int? value) {
                                  setState(() {
                                    selectedRadio = value!;
                                  });
                                },
                              ),
                              TaskLevel(
                                  color: TTColors.orangeColor,
                                  textColor: TTColors.darkOrangeColor,
                                  title: _titleFromPriorityLevel(1))
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 2,
                                groupValue: selectedRadio,
                                activeColor: selectedRadio == 2
                                    ? selectedColor
                                    : unselectedColor,
                                onChanged: (int? value) {
                                  setState(() {
                                    selectedRadio = value!;
                                  });
                                },
                              ),
                              TaskLevel(
                                  color: TTColors.redColor,
                                  textColor: TTColors.darkRedColor,
                                  title: _titleFromPriorityLevel(2))
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      TTElevatedButtonWidget(
                          onPressed: () async {
                            await context.read<TaskCubit>().editTask(
                                title: _titleController.text,
                                description: _descriptionController.text,
                                priority:
                                    _titleFromPriorityLevel(selectedRadio),
                                done: selectedStatus == 0 ? false : true,
                                id: taskItem.id);
                          },
                          buttonTitle:
                              AppLocalizations.of(context)?.edit_task ?? ''),
                      const SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  String _titleFromPriorityLevel(int selectedRadio) {
    switch (selectedRadio) {
      case 0:
        return AppLocalizations.of(context)?.low ?? '';
      case 1:
        return AppLocalizations.of(context)?.medium ?? '';
      case 2:
        return AppLocalizations.of(context)?.high ?? '';
      default:
        return AppLocalizations.of(context)?.low ?? '';
    }
  }

  String _titleFromStatusLevel(int selectedRadio) {
    switch (selectedRadio) {
      case 0:
        return AppLocalizations.of(context)?.in_progress ?? '';
      case 1:
        return AppLocalizations.of(context)?.done ?? '';
      default:
        return AppLocalizations.of(context)?.in_progress ?? '';
    }
  }
}
