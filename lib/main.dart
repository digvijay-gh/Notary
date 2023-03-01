import 'package:flutter/material.dart';

import 'package:notary/MarkOrderComplete.dart';
import 'package:notary/add_contact.dart';
import 'package:notary/appt_details_page.dart';
import 'package:notary/edit_add_company_page.dart';
import 'package:notary/trash.dart';

import 'dashboard.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MarkOrderCompletePage(),
    );
  }
}
