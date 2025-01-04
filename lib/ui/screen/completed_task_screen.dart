import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';
import 'package:task_manager/ui/widgets/task_item_widget.dart';
import 'package:task_manager/ui/widgets/tm_app_bar.dart';

class CompletedTaskScreen extends StatefulWidget {
  const CompletedTaskScreen({super.key});

  @override
  State<CompletedTaskScreen> createState() => _CompletedTaskScreenState();
}

class _CompletedTaskScreenState extends State<CompletedTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TMAppbar(),
      body: ScreenBackground(
        child: _buildTaskListView(),
      ),
    );
  }
}

Widget _buildTaskListView() {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) {
      return const taskItemWidget();
    },
  );
}
