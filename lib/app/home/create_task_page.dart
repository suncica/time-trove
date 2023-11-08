import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:time_trove_app/app/home/bloc/task_cubit.dart';
import 'package:time_trove_app/app/home/bloc/task_state.dart';
import 'package:time_trove_app/common/colors/colors.dart';
import 'package:time_trove_app/common/constants/ui_dimenssions.dart';
import 'package:time_trove_app/common/di/service_locator.dart';
import 'package:time_trove_app/common/validators.dart';
import 'package:time_trove_app/common/widgets/task_level.dart';
import 'package:time_trove_app/common/widgets/tt_elevated_button.dart';
import 'package:time_trove_app/common/widgets/tt_text_form_field.dart';
import 'package:time_trove_app/log_helper.dart';

class CreateTaskPage extends StatefulWidget {
  const CreateTaskPage({super.key});
  static const String routeName = '/create_task';

  @override
  State<CreateTaskPage> createState() => _CreateTaskPageState();
}

class _CreateTaskPageState extends State<CreateTaskPage> {
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;
  int selectedRadio = 0;

  Color selectedColor = TTColors.primaryColor;
  Color unselectedColor = Colors.grey.shade400;

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                AppLocalizations.of(context)?.tasks ?? '',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: UIDimensions.universalSpacingL),
                child: Text(AppLocalizations.of(context)?.task_etails ?? '',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              Form(
                key: _formKey,
                child: Column(children: [
                  TTTextInputField(
                    controller: _titleController,
                    hintText: AppLocalizations.of(context)?.task_title ?? '',
                    textCapitalization: TextCapitalization.sentences,
                    validator: (value) {
                      final errorMessage = Validators.validateEmptyString(
                          itemName: null, string: value, context: context);
                      if (errorMessage != null) {
                        return errorMessage;
                      }
                    },
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
                      hintText:
                          AppLocalizations.of(context)?.task_description ?? '',
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
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
              const Flexible(child: SizedBox()),
              const Spacer(),
              BlocProvider<TaskCubit>(
                create: (context) => locator.get<TaskCubit>(),
                child: BlocConsumer<TaskCubit, TaskState>(
                  listener: (context, state) {
                    d('state je $state');
                    state.mapOrNull(
                        successCreatingTask: (value) {
                          _titleController.clear();
                          _descriptionController.clear();
                          Navigator.of(context).pop();
                        },
                        successFetchingTasksInProgressList: (value) {});
                  },
                  builder: (context, state) {
                    return TTElevatedButtonWidget(
                      onPressed: () {
                        context.read<TaskCubit>().createTask(
                            _titleController.text,
                            _descriptionController.text,
                            _titleFromPriorityLevel(selectedRadio));
                      },
                      buttonTitle:
                          AppLocalizations.of(context)?.create_task ?? '',
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 40,
              )
            ]),
          ),
        ),
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
}
