import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MileageSheet extends StatelessWidget {
  const MileageSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.money_off,
                    size: 44,
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Add Mileage",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text("You have not added any miles"),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 24),
              const Text("Mileages"),
              const SizedBox(height: 8),
              Row(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      constraints: BoxConstraints(maxHeight: 40, maxWidth: 160),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF3313C3)),
                    child: const Text("Update"),
                  ),
                  const SizedBox(width: 30),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                  "This was Auto Calculated by our Mileage Tracking software"),
              const SizedBox(height: 8),
              const Divider(
                thickness: 1,
                color: Colors.black54,
              ),
              CheckboxListTile(
                dense: true,
                contentPadding: const EdgeInsets.all(0),
                activeColor: Colors.green,
                controlAffinity: ListTileControlAffinity.leading,
                title:
                    const Text("I did not have any Mileage for this signing"),
                value: false,
                onChanged: (value) {
                  // setState(() {
                  //   widget.values[key] = value!;
                  // }
                  // );
                },
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      CupertinoIcons.check_mark_circled_solid,
                      color: Colors.green.shade400,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pro Tip!",
                            style: TextStyle(
                                fontSize: 18, color: Colors.green.shade900),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            "You can use our inApp Tracking Technology to automatically track your distance travelled,",
                            style: TextStyle(
                              overflow: TextOverflow.clip,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Enable them in your dashboard before going to Appointment.",
                            style: TextStyle(
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
