import 'package:flutter/material.dart';

import 'common_widgets.dart';

class AddContact extends StatelessWidget {
  const AddContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text(
      //     "Create a New Contact",
      //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Create a New Contact",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 40),
                const Text("First Name", style: TextStyle(fontSize: 16)),
                const UnderlinedTextField(),
                const SizedBox(height: 16),
                const Text("Last Name", style: TextStyle(fontSize: 16)),
                const UnderlinedTextField(),
                const SizedBox(height: 16),
                const Text("Type", style: TextStyle(fontSize: 16)),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    BlueOutlinedButton(text: "Customer"),
                    BlueOutlinedButton(text: "Signer"),
                    BlueOutlinedButton(text: "Other"),
                  ],
                ),
                const SizedBox(height: 16),
                const Text("Email", style: TextStyle(fontSize: 16)),
                const UnderlinedTextField(),
                const SizedBox(height: 24),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)),
                      backgroundColor: Colors.grey.shade800),
                  onPressed: () {},
                  child: Text(
                    "Add Contact",
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade300),
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

class BlueOutlinedButton extends StatelessWidget {
  const BlueOutlinedButton({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        side: const BorderSide(color: Colors.blue, width: 2),
      ),
      child: Text(text),
    );
  }
}
