import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ApptDetailsScreen extends StatelessWidget {
  const ApptDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Appointment Info",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: const [
                    const Icon(Icons.laptop),
                    const SizedBox(width: 4),
                    const Text("This is Mobile Signing"),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Card(
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [const Text("Singing Stage:")],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Service Details:"),
                            Text(
                              "Edit",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * (2 / 3),
                                child: const Text(
                                    "Real Estate Notarisation - Buyer Packages")),
                            const Text("\$200")
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Date & Time: 11/12/22 @ 4.30PM"),
                            const Text(
                              "Reschedule",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Service Details:",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "Edit",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Ashley Bolden",
                              style: TextStyle(fontSize: 18),
                            ),
                            Expanded(child: SizedBox()),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.phone)),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.mail)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.phone_android)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Quick Actions",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.phone, size: 32),
                                ),
                                Text("Expenses"),
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.mail, size: 32),
                                ),
                                Text("Notorial Acts"),
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.phone_android, size: 32),
                                ),
                                Text("Mileage"),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Signing Location"),
                        ListTile(
                          leading: Icon(
                            Icons.location_pin,
                            size: 28,
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 6),
                            child: Text(
                              "1544,North Bouleyard Road, Clark County, Texas",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          subtitle: Text(
                            "3.45 miles from your home location",
                            style: TextStyle(fontSize: 12),
                          ),
                          trailing: ElevatedButton(
                            onPressed: () {},
                            child: Text("Map"),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 8),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Customer Info"),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.person_alt_circle,
                                size: 32,
                              ),
                              SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Clarie Anderson"),
                                  SizedBox(height: 4),
                                  Text(
                                    "From TitleAgnecy Name",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ],
                              ),
                              Expanded(child: SizedBox()),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.mail)),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.phone)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(CupertinoIcons.plus_square_fill)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Link Company",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "All Real Estate Orders must be linked to company.",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 100,
                              child: Text(
                                "Customer has mentioned 'Pro Signings Title Agency in the order form.'",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Invoice"),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.edit_document),
                            )
                          ],
                        ),
                        Text("Invoice: #ET123456"),
                        SizedBox(height: 8),
                        Text(
                          "Clarie Anderson",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 8)
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Row(
                      children: [
                        // Text("Add Tracking Info"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Tracking"),
                            SizedBox(height: 4),
                            Text(
                              "Fed Ex,#1234567890",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ],
                        ),
                        Expanded(child: SizedBox()),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.edit_document))
                      ],
                    ),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 28),
                      child: Text(
                        "Activity Log>",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
