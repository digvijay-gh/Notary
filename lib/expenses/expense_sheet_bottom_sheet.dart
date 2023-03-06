import 'package:flutter/material.dart';

import '../common_widgets.dart';

class CustomExpenseSheet extends StatelessWidget {
  const CustomExpenseSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom + 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Add a Custom Expense",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Expense name :",
                    ),
                    SizedBox(width: 16),
                    OutlinedTextfield(
                      textAlign: TextAlign.center,
                      boxConstraints:
                          BoxConstraints(maxHeight: 32, maxWidth: 180),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Amount :",
                    ),
                    SizedBox(width: 16),
                    OutlinedTextfield(
                      textAlign: TextAlign.center,
                      boxConstraints:
                          BoxConstraints(maxHeight: 32, maxWidth: 180),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Vendor Name :",
                    ),
                    SizedBox(width: 16),
                    OutlinedTextfield(
                      textAlign: TextAlign.center,
                      boxConstraints:
                          BoxConstraints(maxHeight: 32, maxWidth: 180),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Upload Receipt",
                    ),
                    SizedBox(
                      height: 32,
                      width: 180,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: const Icon(Icons.cloud_upload, size: 28),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          CheckboxListTile(
            dense: true,
            contentPadding: const EdgeInsets.all(0),
            activeColor: Colors.green,
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text("Save this expense to show in future signings"),
            value: false,
            onChanged: (value) {},
          ),
          const SizedBox(height: 8),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                backgroundColor: Colors.blue.shade800,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
              child: const Text(
                "Create Custom Expense",
                style: TextStyle(fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
