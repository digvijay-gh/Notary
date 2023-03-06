import 'package:flutter/material.dart';
import 'package:notary/common_widgets.dart';

import 'custom_date_picker.dart';

class NotarialActs extends StatelessWidget {
  const NotarialActs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
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
                        "Notarial Acts",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text("You have not added any Notarial acts"),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 24),
              const Text("Acts", style: TextStyle(fontSize: 16)),
              const SizedBox(height: 4),
              const Divider(thickness: 1, color: Colors.black54),
              const SizedBox(height: 8),
              Card(
                elevation: 2,
                margin: EdgeInsets.zero,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Notarial Acts"),
                                UnderlinedTextField()
                              ],
                            ),
                          ),
                          const SizedBox(width: 32),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Cost Per Act"),
                                UnderlinedTextField()
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const MyDatePicker(),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3313C3),
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                  ),
                  child: const Text("Add"),
                ),
              ),
              const SizedBox(height: 4),
              const Divider(thickness: 1, color: Colors.black54),
              const SizedBox(height: 4),
              CheckboxListTile(
                dense: true,
                contentPadding: const EdgeInsets.all(0),
                activeColor: Colors.green,
                controlAffinity: ListTileControlAffinity.leading,
                title:
                    const Text("I did not have any Mileage for this signing"),
                value: false,
                onChanged: (value) {},
              ),
              const SizedBox(height: 8),
              const Text("Previously Added Acts",
                  style: TextStyle(fontSize: 16)),
              const SizedBox(height: 2),
              const Divider(thickness: 1, color: Colors.black54, height: 1),
              const SizedBox(height: 8),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  // physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      margin: EdgeInsets.zero,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Row(
                          children: [
                            const SizedBox(width: 8),
                            const Text("12/22/2002  |  3 Acts  |  \$15"),
                            const Expanded(child: SizedBox()),
                            IconButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return EditActBottomSheet();
                                      });
                                },
                                icon: const Icon(Icons.edit)),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.delete, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 8);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EditActBottomSheet extends StatelessWidget {
  EditActBottomSheet({
    super.key,
  });
  final TextEditingController dateInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Edit Act",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close, size: 30),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text("Notarial Acts"),
                const SizedBox(height: 4),
                const Text("3"),
                const SizedBox(height: 24),
                const Text("Cost Per Act"),
                const SizedBox(height: 4),
                const Text("5"),
                const SizedBox(height: 24),
                const MyDatePicker(),
                const SizedBox(height: 16),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text("Total Fees : \$15", textAlign: TextAlign.right),
                ),
                const SizedBox(height: 8),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF3313C3),
                        padding: const EdgeInsets.symmetric(horizontal: 24)),
                    child: const Text("Update"),
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
