import 'package:flutter/material.dart';

class PastSingingsWidget extends StatelessWidget {
  const PastSingingsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Review your Past Signings",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          PastSingingsTab(
            textColor: Colors.green.shade900,
            borderColor: Colors.green.shade400,
            backgroundColor: Colors.green.shade100,
            text: 'Invoice Entry Required',
          ),
          const SizedBox(height: 16),
          PastSingingsTab(
            textColor: Colors.green.shade900,
            borderColor: Colors.green.shade400,
            backgroundColor: Colors.green.shade100,
            text: 'Notorial Acts Not Entered',
          ),
          const SizedBox(height: 16),
          PastSingingsTab(
            textColor: Colors.red.shade600,
            borderColor: Colors.red.shade400,
            backgroundColor: Colors.red.shade100,
            text: 'Expense Entry Required',
          ),
          const SizedBox(height: 16),
          PastSingingsTab(
            textColor: Colors.blue.shade900,
            borderColor: Colors.blue.shade900,
            backgroundColor: Colors.blue.shade100,
            text: 'Mileage Entry Required',
          ),
        ],
      ),
    );
  }
}

class PastSingingsTab extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final String text;
  const PastSingingsTab({
    Key? key,
    required this.backgroundColor,
    required this.textColor,
    required this.borderColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: backgroundColor.withOpacity(0.8),
        border: Border.all(color: borderColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
          ),
          Text(
            "7 Signings",
            style: TextStyle(color: textColor),
          ),
        ],
      ),
    );
  }
}
