import 'package:flutter/material.dart';
import '../common_widgets.dart';
import 'cards.dart';

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
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: const [
                    Icon(Icons.laptop),
                    SizedBox(width: 4),
                    Text("This is Mobile Signing"),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const SigningStageCard(),
                const ServiceDetailsCard(),
                const SizedBox(height: 4),
                const Center(
                  child: GreenOutlinedButton(
                    text: "Start Mileage Tracking",
                    hzPadding: 50,
                    fontsize: 16,
                  ),
                ),
                const QuickActionsCard(),
                const SigningLocationCard(),
                const CustomerInfoCard(),
                const LinkCompanyCard(),
                const InvoiceCard(),
                const TrackingCard(),
                const ActivityLogCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
