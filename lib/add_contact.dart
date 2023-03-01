import 'package:flutter/material.dart';

class AddContact extends StatelessWidget {
  const AddContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "First Name",
                  style: TextStyle(fontSize: 16),
                ),
                const TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.only(top: 10, bottom: 6),
                    constraints: BoxConstraints(maxHeight: 40),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Last Name",
                  style: TextStyle(fontSize: 16),
                ),
                const TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.only(top: 10, bottom: 6),
                    constraints: BoxConstraints(maxHeight: 40),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Type",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Customer"),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        side: BorderSide(color: Colors.blue, width: 2),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Signer"),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        side: BorderSide(color: Colors.blue, width: 2),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Other"),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        side: BorderSide(color: Colors.blue, width: 2),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  "Email",
                  style: TextStyle(fontSize: 16),
                ),
                const TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.only(top: 10, bottom: 6),
                    constraints: BoxConstraints(maxHeight: 40),
                  ),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
