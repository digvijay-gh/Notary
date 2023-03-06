import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'upcoming_appointment.dart';
import 'past_signing.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TopHeader(),
                SizedBox(height: 8),
                UpcomingAppointmentCard(),
                SizedBox(height: 16),
                QuickActionsWidget(),
                SizedBox(height: 16),
                PastSingingsWidget(),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const CircleAvatar(),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Good Morning,"),
              SizedBox(height: 2),
              Text("Aman Dwivedi",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ],
          ),
          const Expanded(child: SizedBox()),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Quick Actions",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      elevation: 2,
                      backgroundColor: Colors.white,
                    ),
                    child: Row(
                      children: const [
                        Icon(CupertinoIcons.plus_square_fill,
                            color: Colors.green),
                        SizedBox(width: 4),
                        Text("Book new appointment",
                            style: TextStyle(color: Colors.black))
                      ],
                    )),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    backgroundColor: Colors.white,
                    elevation: 2,
                  ),
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
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
