import 'package:flutter/material.dart';
import 'package:listinha/src/shared/services/realm/models/task_model.dart';

class TaskCard extends StatelessWidget {
  final TaskBoard board;

  const TaskCard({super.key, required this.board});

  double getProgress(List<Task> tasks) {
    final completas = tasks.where((task) => task.complete).length;
    return completas / tasks.length;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final backgroundColor = theme.colorScheme.primaryContainer;
    final color = theme.colorScheme.primary;

    final progress = getProgress(board.tasks);
    final title = 'Título Exemplo';
    final statusText = 'Status Exemplo';
    final progressText = '1/4';
    final iconData = Icons.access_time_outlined;

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      height: 130,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(iconData),
              const Spacer(),
              Text(statusText),
            ],
          ),
          const Spacer(),
          Text(title),
          LinearProgressIndicator(
            color: color,
            value: progress,
          ),
          Text(progressText),
        ],
      ),
    );
  }
}
