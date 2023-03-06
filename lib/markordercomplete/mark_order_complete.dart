import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notary/common_widgets.dart';
import 'package:notary/custom_date_picker.dart';

class MarkOrderCompletePage extends StatelessWidget {
  const MarkOrderCompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              const Center(
                child: Text(
                  "Marking As Complete?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: double.maxFinite,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: const [
                    Icon(
                      CupertinoIcons.check_mark_circled_solid,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Text(
                        "Marking an signing complete will send invoice to customer or signer based on order type",
                        style: TextStyle(
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.maxFinite,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: const [
                    Icon(
                      CupertinoIcons.check_mark_circled_solid,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Text(
                        "Signers will recieve Thank You & request review link on your SMS & Email",
                        style: TextStyle(
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.maxFinite,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.yellow.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: const [
                    Icon(
                      CupertinoIcons.exclamationmark_triangle_fill,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Text(
                        "You need to update payment recieved entry, after recieving payment for accurate report of your dashboard.",
                        style: TextStyle(
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Settings",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              CheckboxListTile(
                dense: true,
                contentPadding: const EdgeInsets.all(0),
                activeColor: Colors.green,
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text("Do not send Invoice Email to Customer"),
                value: false,
                onChanged: (value) {
                  // setState(() {
                  //   widget.values[key] = value!;
                  // }
                  // );
                },
              ),
              CheckboxListTile(
                dense: true,
                contentPadding: const EdgeInsets.all(0),
                activeColor: Colors.green,
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text("Do not send Thank You Email to Signer"),
                value: false,
                onChanged: (value) {
                  // setState(() {
                  //   widget.values[key] = value!;
                  // }
                  // );
                },
              ),
              CheckboxListTile(
                dense: true,
                contentPadding: const EdgeInsets.all(0),
                activeColor: Colors.green,
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text("Do not send Request Review Link"),
                value: false,
                onChanged: (value) {
                  // setState(() {
                  //   widget.values[key] = value!;
                  // }
                  // );
                },
              ),
              const SizedBox(height: 16),
              Center(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(double.maxFinite, 20),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    side: BorderSide(color: Colors.blue.shade500, width: 1.5),
                    backgroundColor: const Color.fromARGB(255, 180, 220, 254),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: Text(
                    "Review Invoice & Complete Signing",
                    style: TextStyle(color: Colors.grey.shade800),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Center(
                child: Text(
                  "Note: You can add Expenses, Acts & Mileage later as well",
                  style: TextStyle(fontSize: 12),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
