import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'listing_buttons.dart';

class ListingPage extends StatelessWidget {
  const ListingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            // const SizedBox(height: 200),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 4),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            "Ashley Bolden",
                            style: TextStyle(
                              fontSize: 20,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(child: SizedBox()),

                          // const InvoiceNotGeneratedButton(),
                          // InvoiceDueButton(),
                          // InvoiceOverDueButton(),
                          InvoicePaidButton(),
                          SizedBox(width: 4),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 4),
                      child: Row(
                        children: const [
                          Icon(CupertinoIcons.building_2_fill),
                          SizedBox(width: 4),
                          Text(
                            "Pro Signings Tile Company",
                            style: TextStyle(fontSize: 12),
                          ),
                          Expanded(child: SizedBox()),
                          SigningIDButton()
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 4),
                      child: Row(
                        children: const [
                          Icon(CupertinoIcons.doc_on_doc),
                          SizedBox(width: 4),
                          Text(
                            "Loan Signing - Buyer Packages",
                            style: TextStyle(fontSize: 12),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            "ET-12341",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Row(
                        children: const [
                          Icon(CupertinoIcons.clock),
                          SizedBox(width: 4),
                          Text(
                            "11/12/2022 @ 4:30PM",
                            style: TextStyle(fontSize: 12),
                          ),
                          Expanded(child: SizedBox()),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              "\$200",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Row(
                        children: [
                          const Text("Quick Actions"),
                          const SizedBox(width: 4),
                          IconButton(
                            onPressed: () {},
                            padding: const EdgeInsets.all(2),
                            constraints: const BoxConstraints(),
                            icon: const Icon(Icons.attach_money),
                          ),
                          IconButton(
                            onPressed: () {},
                            padding: const EdgeInsets.all(2),
                            constraints: const BoxConstraints(),
                            icon: const Icon(Icons.attach_money),
                          ),
                          IconButton(
                            onPressed: () {},
                            padding: const EdgeInsets.all(2),
                            constraints: const BoxConstraints(),
                            icon: const Icon(Icons.attach_money),
                          ),
                          const Expanded(child: SizedBox()),
                          TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  backgroundColor: const Color(0xff8bc34a),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 8),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  minimumSize: const Size(0, 0)),
                              child: const Text(
                                "Mark Completed",
                                style: TextStyle(
                                    color: Color(0xff285219), fontSize: 12),
                              ))
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 4),
                      child: Row(
                        children: [
                          Icon(
                            Icons.info,
                            color: Colors.grey.shade700,
                          ),
                          const SizedBox(width: 8),
                          const Expanded(
                            child: Text(
                              "Update Payments for this Appointment.",
                              style: TextStyle(fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(
                    //       horizontal: 6, vertical: 4),
                    //   child: Row(
                    //     children: const [
                    //       Icon(
                    //         Icons.info,
                    //         color: Colors.blue,
                    //       ),
                    //       SizedBox(width: 8),
                    //       Expanded(
                    //         child: Text(
                    //           "Marking complete will send invoice to customer and Thank You Email to Signer",
                    //           style: TextStyle(fontSize: 12),
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    const SizedBox(height: 4)
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            "Ashley Bolden",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          SigningIDButton(),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 4),
                      child: Row(
                        children: const [
                          Icon(CupertinoIcons.paperplane),
                          SizedBox(width: 4),
                          Text(
                            "Quote Sent",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Expanded(child: SizedBox()),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              "\$200",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 4),
                      child: Row(
                        children: const [
                          Icon(CupertinoIcons.doc_on_doc),
                          SizedBox(width: 4),
                          Text(
                            "Loan Signing - Buyer Packages",
                            style: TextStyle(fontSize: 12),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            "ET-12341",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 4),
                      child: Row(
                        children: const [
                          Icon(CupertinoIcons.clock),
                          SizedBox(width: 4),
                          Text(
                            "11/12/2022 @ 4:30PM",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Row(
                        children: [
                          const Text("Quick Actions"),
                          const SizedBox(width: 4),
                          IconButton(
                            onPressed: () {},
                            padding: const EdgeInsets.all(2),
                            constraints: const BoxConstraints(),
                            icon: const Icon(Icons.attach_money),
                          ),
                          IconButton(
                            onPressed: () {},
                            padding: const EdgeInsets.all(2),
                            constraints: const BoxConstraints(),
                            icon: const Icon(Icons.attach_money),
                          ),
                          const Expanded(child: SizedBox()),
                          TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  backgroundColor: const Color(0xff8bc34a),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 8),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  minimumSize: const Size(0, 0)),
                              child: const Text(
                                "Mark Completed",
                                style: TextStyle(
                                    color: Color(0xff285219), fontSize: 12),
                              ))
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(
                    //       horizontal: 6, vertical: 4),
                    //   child: Row(
                    //     children: [
                    //       Icon(
                    //         Icons.info,
                    //         color: Colors.grey.shade700,
                    //       ),
                    //       const SizedBox(width: 8),
                    //       const Expanded(
                    //         child: Text(
                    //           "Update Payments for this Appointment.",
                    //           style: TextStyle(fontSize: 12),
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 4),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.info,
                            color: Colors.blue,
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              "Marking complete will send invoice to customer and Thank You Email to Signer",
                              style: TextStyle(fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 4)
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
