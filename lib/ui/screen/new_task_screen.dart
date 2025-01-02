import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/add_new_task_screen.dart';
import 'package:task_manager/ui/utills/app_colour.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';
import 'package:task_manager/ui/widgets/task_item_widget.dart';
import 'package:task_manager/ui/widgets/task_status_summery_widget.dart';
import 'package:task_manager/ui/widgets/tm_app_bar.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const TMAppbar(),
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildTaskSummeryStatus(),
              _buildTaskListView(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddNewTaskScreen.name);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildTaskListView() {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) {
        return const taskItemWidget();
      },
    );
  }

  Widget _buildTaskSummeryStatus() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            taskStatusSummeryCounterWidget(
              title: 'New',
              count: '10',
            ),
            taskStatusSummeryCounterWidget(
              title: 'Progress',
              count: '10',
            ),
            taskStatusSummeryCounterWidget(
              title: 'Completed',
              count: '10',
            ),
            taskStatusSummeryCounterWidget(
              title: 'Cancelled',
              count: '10',
            ),
          ],
        ),
      ),
    );
  }
}
