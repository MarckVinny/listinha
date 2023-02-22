import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      height: 130,
      decoration: BoxDecoration(
        color: Colors.red.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.access_time_outlined),
              Spacer(),
              Text('Status'),
            ],
          ),
          const Spacer(),
          const Text('Título da Tarefa'),
          const LinearProgressIndicator(
            color: Colors.red,
            value: 0.6,
          ),
          const Text('1/4'),
        ],
      ),
    );
  }
}
