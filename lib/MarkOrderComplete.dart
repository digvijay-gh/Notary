import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarkOrderCompletePage extends StatelessWidget {
  const MarkOrderCompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12),
                Center(
                  child: Text(
                    "Marking As Complete?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        CupertinoIcons.check_mark_circled_solid,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Text(
                          "Marking an signing complete will send invoice to customer or signer based on order type",
                          style: TextStyle(
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        CupertinoIcons.check_mark_circled_solid,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Text(
                          "Signers will recieve Thank You & request review link on your SMS & Email",
                          style: TextStyle(
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade50,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        CupertinoIcons.exclamationmark_triangle_fill,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Text(
                          "You need to update payment recieved entry, after recieving payment for accurate report of your dashboard.",
                          style: TextStyle(
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Settings",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text("Do not send Invoice Email to Customer"),
                SizedBox(height: 8),
                Text("Do not send Thank You Email to Signer"),
                SizedBox(height: 8),
                Text("Do not send Request Review Link"),
                SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
