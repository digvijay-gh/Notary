import 'package:flutter/material.dart';
import 'package:notary/common_widgets.dart';

class EditAddCompanyScreen extends StatelessWidget {
  const EditAddCompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text(
      //     "Edit / Add a Company",
      //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Edit / Add a Company",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text("Company", style: TextStyle(fontSize: 16)),
                const UnderlinedTextField(),
                const SizedBox(height: 16),
                const Text("Address", style: TextStyle(fontSize: 16)),
                const UnderlinedTextField(),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("State", style: TextStyle(fontSize: 16)),
                              UnderlinedTextField()
                            ])),
                    const SizedBox(width: 32),
                    Expanded(
                        flex: 1,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Zip Code", style: TextStyle(fontSize: 16)),
                              UnderlinedTextField(),
                            ])),
                  ],
                ),
                const SizedBox(height: 16),
                const Text("Fax", style: TextStyle(fontSize: 16)),
                const UnderlinedTextField(),
                const SizedBox(height: 16),
                const Text("Email", style: TextStyle(fontSize: 16)),
                const UnderlinedTextField(),
                const SizedBox(height: 16),
                const Text("Tax Code", style: TextStyle(fontSize: 16)),
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
