import 'package:flutter/material.dart';
import 'package:notary/listingpage/appt_listing_page.dart';
import 'package:notary/expenses/expense_sheet.dart';
import 'package:notary/invoice_listing.dart';
import 'package:notary/add_contact.dart';
import 'package:notary/edit_add_company_page.dart';
import 'package:notary/markordercomplete/mark_order_complete.dart';
import 'package:notary/mileage_sheet.dart';
import 'package:notary/notarial_acts.dart';
import 'dashboard/dashboard.dart';
import 'markordercomplete/create_invoice.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InvoiceListing(),
    );
  }
}
