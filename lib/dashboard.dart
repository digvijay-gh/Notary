import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TopHeader(),
              SizedBox(height: 8),
              UpcomingAppointmentCard(),
              SizedBox(height: 8),
              QuickActionsWidget(),
              SizedBox(height: 8),
              PastSingingsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class PastSingingsWidget extends StatelessWidget {
  const PastSingingsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Review your Past Signings",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          PastSingingsTab(
            textColor: Colors.green.shade900,
            borderColor: Colors.green.shade400,
            backgroundColor: Colors.green.shade100,
            text: 'Invoice Entry Required',
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.green.shade100.withOpacity(0.8),
              border: Border.all(color: Colors.green.shade400),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Notorial Acts Not Entered",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(
                  "7 Signings",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.red.shade100.withOpacity(0.8),
              border: Border.all(color: Colors.red.shade400),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Expense Entry Required",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(
                  "7 Signings",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.blue.shade100.withOpacity(0.8),
              border: Border.all(color: Colors.blue.shade400),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Mileage Entry Required",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(
                  "7 Signings",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PastSingingsTab extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final String text;
  const PastSingingsTab({
    Key? key,
    required this.backgroundColor,
    required this.textColor,
    required this.borderColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: backgroundColor.withOpacity(0.8),
        border: Border.all(color: borderColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
          ),
          Text(
            "7 Signings",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class QuickActionsWidget extends StatelessWidget {
  const QuickActionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Quick Actions",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    elevation: 1,
                    backgroundColor: Colors.white,
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        CupertinoIcons.plus_square_fill,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Book new appointment",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  )),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    backgroundColor: Colors.white,
                    elevation: 1),
                child: Row(
                  children: const [
                    Icon(
                      Icons.medical_services,
                      color: Colors.green,
                    ),
                    SizedBox(width: 4),
                    Text(
                      "Call Ambulance",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TopHeader extends StatelessWidget {
  const TopHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 8),
      child: Row(
        children: [
          const CircleAvatar(),
          const SizedBox(
            width: 12,
          ),
          Column(
            children: const [
              Text("Good Morning,"),
              Text(
                "Aman Dwivedi",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Expanded(
            child: SizedBox(),
          ),
          const Icon(Icons.notifications),
          const SizedBox(
            width: 6,
          )
        ],
      ),
    );
  }
}

class UpcomingAppointmentCard extends StatelessWidget {
  const UpcomingAppointmentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Upcoming Appointments",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(
                  "View All",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            const Text("Today"),
            const SizedBox(height: 6),
            const AppointmentDetailsCard(),
            const SizedBox(height: 12),
            const Text("Tommorow"),
            const SizedBox(height: 6),
            const AppointmentDetailsCard()
          ],
        ),
      ),
    );
  }
}

class AppointmentDetailsCard extends StatelessWidget {
  const AppointmentDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.purple.withOpacity(0.2)),
        boxShadow: [
          const BoxShadow(
            color: Colors.purple,
            blurRadius: 12,
            spreadRadius: -8,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                "Ashley Bolden",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Expanded(child: SizedBox()),
              Icon(Icons.phone, size: 24, color: Colors.black38),
              SizedBox(width: 16),
              Icon(Icons.message, size: 24, color: Colors.green),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              const Icon(Icons.note),
              const SizedBox(width: 4),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.75,
                child: const Text("General Notary - Acknowledgement"),
              ),
              const Expanded(child: SizedBox()),
              const Text(
                "11/12/22 @ 4.30PM",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              )
            ],
          ),
          const SizedBox(height: 4),
          const Divider(thickness: 1, color: Colors.grey),
          Row(
            children: const [
              Icon(Icons.laptop),
              SizedBox(width: 4),
              Text("Online Signing"),
              Expanded(child: SizedBox()),
              Text("\$10")
            ],
          )
        ],
      ),
    );
  }
}
