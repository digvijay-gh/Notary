import 'package:flutter/material.dart';

class UnderlinedTextField extends StatelessWidget {
  const UnderlinedTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(vertical: 10),
        constraints: BoxConstraints(maxHeight: 40),
      ),
    );
  }
}

class GreenOutlinedButton extends StatelessWidget {
  const GreenOutlinedButton({
    super.key,
    required this.text,
    this.hzPadding = 12.0,
    this.fontsize = 14.0,
  });
  final String text;
  final double hzPadding;
  final double fontsize;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.green.shade100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        padding: EdgeInsets.symmetric(horizontal: hzPadding),
        side: BorderSide(color: Colors.green.shade700),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.green.shade700,
          fontSize: fontsize,
        ),
      ),
    );
  }
}

class OutlinedTextfield extends StatelessWidget {
  const OutlinedTextfield({
    super.key,
    this.textAlign = TextAlign.start,
    required this.boxConstraints,
  });
  final TextAlign textAlign;
  final BoxConstraints boxConstraints;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: textAlign,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        constraints: boxConstraints,
      ),
    );
  }
}
