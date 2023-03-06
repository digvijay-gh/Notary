import 'package:flutter/material.dart';

class InvoiceNotGeneratedButton extends StatelessWidget {
  const InvoiceNotGeneratedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color(0xfffcd8d6),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        minimumSize: const Size(0, 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        side: const BorderSide(color: Color(0xfff6695e)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: const Text(
        "Invoice: Not Generated",
        style: TextStyle(fontSize: 11, color: Color(0xfff6695e)),
      ),
    );
  }
}

class InvoiceDueButton extends StatelessWidget {
  const InvoiceDueButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color(0xfffffad6),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        minimumSize: const Size(0, 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        side: const BorderSide(color: Colors.yellow),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        "Invoice: Due",
        style: TextStyle(fontSize: 11, color: Colors.grey.shade500),
      ),
    );
  }
}

class InvoiceOverDueButton extends StatelessWidget {
  const InvoiceOverDueButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color(0xfffcd8d6),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        minimumSize: const Size(0, 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        side: const BorderSide(color: Color(0xfff6695e)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: const Text(
        "Invoice: Overdue",
        style: TextStyle(fontSize: 11, color: Color(0xfff6695e)),
      ),
    );
  }
}

class InvoicePaidButton extends StatelessWidget {
  const InvoicePaidButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color(0xffdaeedc),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        minimumSize: const Size(0, 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        side: const BorderSide(color: Color(0xff6fbf71)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: const Text(
        "Invoice: Paid",
        style: TextStyle(fontSize: 11, color: Color(0xff6fbf71)),
      ),
    );
  }
}

class SigningIDButton extends StatelessWidget {
  const SigningIDButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color(0xffd2eafd),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        minimumSize: const Size(0, 0),
        // fixedSize: Size(105, 28),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        side: const BorderSide(color: Color(0xff3fa5f4)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Row(
        children: const [
          Icon(Icons.laptop, size: 18),
          SizedBox(width: 4),
          Text(
            "Real Estate",
            // "RON",
            style: TextStyle(fontSize: 10, color: Color(0xff3fa5f4)),
          ),
        ],
      ),
    );
  }
}
