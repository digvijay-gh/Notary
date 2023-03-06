import 'package:flutter/material.dart';

class InvoiceListing extends StatelessWidget {
  const InvoiceListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Invoices",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black45, blurRadius: 5, spreadRadius: -2),
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          DaysOutlndBtn(noOfDays: 30),
                          DaysOutlndBtn(noOfDays: 45),
                          DaysOutlndBtn(noOfDays: 60),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text("Paid : \$120"),
                          Text("Due : \$120"),
                          Text("Overdue : \$130"),
                        ],
                      ),
                      const SizedBox(height: 12),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CustomTextButton(text: "Extra Soft", isActive: false),
                  CustomTextButton(text: 'Soft', isActive: false),
                  CustomTextButton(text: 'Medium', isActive: true),
                  CustomTextButton(text: 'Hard', isActive: false),
                ],
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.separated(
                  itemCount: 4,
                  shrinkWrap: true,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 12);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return InvoiceDetailsCard();
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

class InvoiceDetailsCard extends StatelessWidget {
  const InvoiceDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text("Invoice#: ET-1312"),
              const Expanded(child: SizedBox()),
              const Text("\$200"),
              const SizedBox(width: 16),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    backgroundColor: const Color(0xffdac3fa),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    minimumSize: const Size(0, 0),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                child: const Text(
                  "Medium",
                  style: TextStyle(
                    color: Color(0xff7f38f2),
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          const Text("Ashley Bolden", style: TextStyle(fontSize: 18)),
          const SizedBox(height: 2),
          const Text("Real Estate - Buyer Packages",
              style: TextStyle(fontSize: 12)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Issue Date: 12/15/2022", style: TextStyle(fontSize: 13)),
              Text("Due Date: 12/15/2022", style: TextStyle(fontSize: 13)),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Text("Linked to Pro Signings Tile Company",
                    style: TextStyle(fontSize: 13)),
              ),
              const SizedBox(width: 40),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(),
                  shape: const RoundedRectangleBorder(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: const Text(
                  "Mark as Paid",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(height: 2)
        ],
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.isActive,
  });
  final String text;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        backgroundColor:
            isActive ? const Color(0xffdac3fa) : Colors.grey.shade200,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        minimumSize: const Size(0, 0),
      ),
      child: Text(text,
          style: TextStyle(
              color: isActive ? const Color(0xff7f38f2) : Colors.black54)),
    );
  }
}

class DaysOutlndBtn extends StatelessWidget {
  const DaysOutlndBtn({
    super.key,
    required this.noOfDays,
  });
  final int noOfDays;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        side: BorderSide(color: Color(0xff283c9d), width: 1),
        minimumSize: const Size(0, 0),
      ),
      child: Text(
        "$noOfDays Days",
        style: TextStyle(color: Color(0xff5b5f75)),
      ),
    );
  }
}
