import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';
import 'package:task_manager/ui/widgets/task_item_widget.dart';
import 'package:task_manager/ui/widgets/tm_app_bar.dart';

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
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
