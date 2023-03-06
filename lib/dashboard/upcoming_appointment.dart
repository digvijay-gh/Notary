import 'package:flutter/material.dart';

class UpcomingAppointmentCard extends StatelessWidget {
  const UpcomingAppointmentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.black45),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Colors.black, blurRadius: 6, spreadRadius: -2),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
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
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Divider(thickness: 1, color: Colors.grey),
            const Text("Today"),
            const SizedBox(height: 8),
            const AppointmentDetailsCard(),
            const SizedBox(height: 16),
            const Text("Tommorow"),
            const SizedBox(height: 8),
            const AppointmentDetailsCard(),
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
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.purple.withOpacity(0.2)),
        boxShadow: const [
          BoxShadow(color: Colors.purple, blurRadius: 12, spreadRadius: -8),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                "Ashley Bolden",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Expanded(child: SizedBox()),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.phone, size: 24, color: Colors.black38),
              ),
              const SizedBox(width: 16),
              IconButton(
                onPressed: () {},
                padding: const EdgeInsets.only(right: 0),
                constraints: const BoxConstraints(),
                icon: const Icon(Icons.message, size: 24, color: Colors.green),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Icon(Icons.note),
              SizedBox(width: 8),
              Text("General Notary -\nAcknowledgement"),
              Expanded(child: SizedBox()),
              Text(
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
          const SizedBox(height: 4),
          Row(
            children: const [
              Icon(Icons.laptop),
              SizedBox(width: 4),
              Text("Online Signing"),
              Expanded(child: SizedBox()),
              Text("\$10")
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
