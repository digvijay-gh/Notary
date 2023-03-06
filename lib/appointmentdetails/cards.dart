import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notary/common_widgets.dart';

class SigningStageCard extends StatelessWidget {
  const SigningStageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Singing Stage:"),
                GreenOutlinedButton(text: "Upcoming"),
                GreenOutlinedButton(text: "Mark Completed"),
              ],
            ),
            const SizedBox(height: 4),
            const Divider(thickness: 1),
            const SizedBox(height: 4),
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
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * (2 / 3),
                    child: const Text(
                        "Real Estate Notarisation - Buyer Packages")),
                const Text("\$200")
              ],
            ),
            const SizedBox(height: 4),
            const Divider(thickness: 1),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Date & Time: 11/12/22 @ 4.30PM"),
                Text(
                  "Reschedule",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 4),
          ],
        ),
      ),
    );
  }
}

class ServiceDetailsCard extends StatelessWidget {
  const ServiceDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Service Details:",
                  // style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Edit",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(width: 4),
                const Text(
                  "Ashley Bolden",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Expanded(child: SizedBox()),
                IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.mail)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.phone_android)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class QuickActionsCard extends StatelessWidget {
  const QuickActionsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Quick Actions",
              // style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.phone, size: 32),
                    ),
                    const Text("Expenses"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.mail, size: 32),
                    ),
                    const Text("Notorial Acts"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.phone_android, size: 32),
                    ),
                    const Text("Mileage"),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SigningLocationCard extends StatelessWidget {
  const SigningLocationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Signing Location"),
            const SizedBox(height: 4),
            ListTile(
              leading: const Icon(Icons.location_pin, size: 28),
              title: const Padding(
                padding: EdgeInsets.only(bottom: 6),
                child: Text(
                  "1544,North Bouleyard Road, Clark County, Texas",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              subtitle: const Text(
                "3.45 miles from your home location",
                style: TextStyle(fontSize: 12),
              ),
              trailing: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.blue.shade50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12)),
                child: Text(
                  "Map",
                  style: TextStyle(color: Colors.indigo.shade400),
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
            )
          ],
        ),
      ),
    );
  }
}

class CustomerInfoCard extends StatelessWidget {
  const CustomerInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Customer Info"),
            Padding(
              padding: const EdgeInsets.only(left: 4, top: 4),
              child: Row(
                children: [
                  const Icon(CupertinoIcons.person_alt_circle, size: 32),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Clarie Anderson"),
                      SizedBox(height: 4),
                      Text(
                        "From TitleAgnecy Name",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.mail)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LinkCompanyCard extends StatelessWidget {
  const LinkCompanyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.plus_square_fill)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Link Company",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  "All Real Estate Orders must be linked to company.",
                  style: TextStyle(fontSize: 12, color: Colors.green.shade700),
                ),
                const SizedBox(
                  height: 6,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 100,
                  child: Text(
                    "Customer has mentioned 'Pro Signings Title Agency in the order form.'",
                    style:
                        TextStyle(fontSize: 12, color: Colors.green.shade700),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class InvoiceCard extends StatelessWidget {
  const InvoiceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Invoice"),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.edit_document),
                  padding: const EdgeInsets.only(right: 8),
                  constraints: const BoxConstraints(),
                )
              ],
            ),
            const Text("Invoice: #ET123456"),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Clarie Anderson",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                GreenOutlinedButton(
                  text: "Mark As Paid",
                  hzPadding: 16,
                )
              ],
            ),
            const SizedBox(height: 8)
          ],
        ),
      ),
    );
  }
}

class TrackingCard extends StatelessWidget {
  const TrackingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Text("Add Tracking Info"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Tracking"),
                SizedBox(height: 4),
                Text(
                  "Fed Ex,#1234567890",
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ],
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit_document),
              padding: const EdgeInsets.only(right: 8),
              constraints: const BoxConstraints(),
            )
          ],
        ),
      ),
    );
  }
}

class ActivityLogCard extends StatelessWidget {
  const ActivityLogCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: SizedBox(
        width: double.maxFinite,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: Text(
            "Activity Log>",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
