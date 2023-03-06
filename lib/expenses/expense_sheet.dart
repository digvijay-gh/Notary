import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'expense_sheet_bottom_sheet.dart';

class ExpenseActs extends StatelessWidget {
  const ExpenseActs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.money_off, size: 44),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Add Expenses",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        Text("You have not added any Expenses"),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 24),
                const Text("Expenses", style: TextStyle(fontSize: 16)),
                const SizedBox(height: 4),
                const Divider(thickness: 1, color: Colors.black54),
                const SizedBox(height: 4),
                CheckboxListTile(
                  dense: true,
                  contentPadding: const EdgeInsets.all(0),
                  activeColor: Colors.green,
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text(
                      "I did not have any Expenses for this signing"),
                  value: false,
                  onChanged: (value) {},
                ),
                const SizedBox(height: 4),
                const Divider(thickness: 1, color: Colors.black54),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Expanded(
                      flex: 10,
                      child: SizedBox(
                        child: Text(
                          "Suggested Expenses for Mobile Notarisation",
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      flex: 8,
                      child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) {
                              return const CustomExpenseSheet();
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade800,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                        ),
                        child: const Text(
                          "Add custom expense",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListView.separated(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("After Hour Cost"),
                          const TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.all(8),
                              constraints: BoxConstraints(
                                  maxHeight: 44, minWidth: 50, maxWidth: 80),
                              focusColor: Colors.grey,
                              isDense: true,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              CupertinoIcons.add_circled_solid,
                              size: 32,
                              color: Color(0xff4f46e6),
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        height: 4,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
