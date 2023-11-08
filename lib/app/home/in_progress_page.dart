import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:time_trove_app/app/home/bloc/task_cubit.dart';
import 'package:time_trove_app/app/home/bloc/task_state.dart';
import 'package:time_trove_app/app/home/create_task_page.dart';
import 'package:time_trove_app/app/home/edit_task_page.dart';
import 'package:time_trove_app/app/home/model/task_dto.dart';
import 'package:time_trove_app/common/constants/ui_dimenssions.dart';
import 'package:time_trove_app/common/di/service_locator.dart';
import 'package:time_trove_app/common/widgets/task_level.dart';
import 'package:time_trove_app/common/widgets/tt_elevated_button.dart';

class InProgressPage extends StatefulWidget {
  const InProgressPage({super.key});
  static const String routeName = '/task_page';

  @override
  State<InProgressPage> createState() => _InProgressPageState();
}

class _InProgressPageState extends State<InProgressPage> {
  late ScrollController _scrollController;
  List<TaskResponseDto> _tasks = [];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: BlocProvider<TaskCubit>(
          create: (context) => locator.get()..fetchTasksInProgress(),
          child: BlocConsumer<TaskCubit, TaskState>(
            listener: (context, state) {
              state.mapOrNull(
                successCreatingTask: (value) {},
                successFetchingTasksInProgressList: (value) {},
              );
            },
            builder: (context, state) {
              Widget widget = Container();
              state.mapOrNull(
                loading: (value) {
                  widget = const Expanded(
                      child: Center(
                    child: CircularProgressIndicator(),
                  ));
                },
                successCreatingTask: (value) {},
                successFetchingTasksInProgressList: (value) {
                  _tasks = value.tasksInProgress;
                  widget = _createList(context, _tasks);
                },
                successFetchingEmptyList: (value) {
                  widget = Expanded(
                    child: Center(
                        child: Text(
                            AppLocalizations.of(context)?.no_tasks_created ??
                                '',
                            textAlign: TextAlign.center)),
                  );
                },
              );
              return Column(
                children: [
                  widget,
                  TTElevatedButtonWidget(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(CreateTaskPage.routeName);
                      },
                      buttonTitle:
                          AppLocalizations.of(context)?.create_task ?? ''),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _createList(
    BuildContext context,
    List<TaskResponseDto> items,
  ) {
    _scrollController = ScrollController();

    return Expanded(
      child: ListView.builder(
        physics: const ClampingScrollPhysics(),
        controller: _scrollController,
        itemBuilder: (_, index) {
          final taskItem = items[index];
          return TaskListItem(
              taskItem: taskItem,
              id: taskItem.id,
              navigateToEditTaskPage: navigateToEditTaskPage);
        },
        itemCount: items.length,
      ),
    );
  }

  void navigateToEditTaskPage(String id) {
    context.read<TaskCubit>().fetchTaskById(id);
    TaskResponseDto? taskToEdit = _tasks.firstWhere((task) => task.id == id);

    Navigator.of(context).pushNamed(EditTaskPage.routeName,
        arguments: EditTaskPageArguments(taskToEdit));
  }
}

class TaskListItem extends StatelessWidget {
  const TaskListItem(
      {super.key,
      required this.taskItem,
      required this.id,
      required this.navigateToEditTaskPage});

  final TaskResponseDto taskItem;
  final String id;
  final void Function(String id) navigateToEditTaskPage;

  @override
  Widget build(buildContext) {
    return Card(
      color: Colors.white,
      child: InkWell(
        onTap: () async {
          navigateToEditTaskPage(id);
        },
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 8, top: 14, bottom: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(taskItem.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: TaskLevel(
                        color: Colors.yellow.shade300,
                        textColor: Colors.black,
                        title: taskItem.priority.toString().split('.').last),
                  ),
                ],
              ),
              const SizedBox(
                height: UIDimensions.universalSpacingM,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Column(children: [
                            Text(
                              taskItem.description,
                              style: const TextStyle(fontSize: 14),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
