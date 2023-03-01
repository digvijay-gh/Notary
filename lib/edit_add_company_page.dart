import 'package:flutter/material.dart';

class EditAddCompanyScreen extends StatelessWidget {
  const EditAddCompanyScreen({super.key});

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
                  "Edit / Add a Company",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Company",
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
                  "Address",
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
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "State",
                            style: TextStyle(fontSize: 16),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding:
                                  EdgeInsets.only(top: 10, bottom: 6),
                              constraints: BoxConstraints(maxHeight: 40),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Zip Code",
                            style: TextStyle(fontSize: 16),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding:
                                  EdgeInsets.only(top: 10, bottom: 6),
                              constraints: BoxConstraints(maxHeight: 40),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  "Fax",
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
                const SizedBox(height: 16),
                const Text(
                  "Tax Code",
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
                    "Update/Add Company",
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
