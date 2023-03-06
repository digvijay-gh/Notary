import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../common_widgets.dart';
import '../custom_date_picker.dart';

class CreateInvoice extends StatelessWidget {
  const CreateInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text("Invoice # "),
                    Text("*", style: TextStyle(color: Colors.red)),
                    SizedBox(width: 12),
                    OutlinedTextfield(
                        boxConstraints:
                            BoxConstraints(maxHeight: 32, maxWidth: 150)),
                    SizedBox(width: 8),
                    Icon(Icons.info, color: Colors.blue)
                  ],
                ),
                const SizedBox(height: 12),
                const EscrowNumMissing(),
                const SizedBox(height: 16),
                const Text("Recipient Emails", style: TextStyle(fontSize: 16)),
                const SizedBox(height: 4),
                const OutlinedTextfield(
                    boxConstraints: BoxConstraints(maxHeight: 40)),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Issue Date",
                              style: TextStyle(fontSize: 16)),
                          const SizedBox(height: 4),
                          MyDatePicker(),
                        ],
                      ),
                    ),
                    const SizedBox(width: 40),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Due Date",
                              style: TextStyle(fontSize: 16)),
                          const SizedBox(height: 4),
                          MyDatePicker(),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text("Bill to", style: TextStyle(fontSize: 16)),
                const SizedBox(height: 16),
                const Text("Bill from", style: TextStyle(fontSize: 16)),
                const SizedBox(height: 12),
                const Text(
                  "Invoice Items",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: const [
                    Expanded(flex: 7, child: Text("Item")),
                    SizedBox(width: 16),
                    Expanded(flex: 3, child: Text("Price")),
                    SizedBox(width: 16),
                    Expanded(flex: 2, child: Text("Qty")),
                    SizedBox(width: 16),
                    Expanded(flex: 4, child: Text("Total Price")),
                  ],
                ),
                const SizedBox(height: 12),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 12);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: const [
                        Expanded(
                            flex: 7,
                            child: OutlinedTextfield(
                                boxConstraints: BoxConstraints(maxHeight: 32))),
                        SizedBox(width: 16),
                        Expanded(
                            flex: 3,
                            child: OutlinedTextfield(
                                boxConstraints: BoxConstraints(maxHeight: 32))),
                        SizedBox(width: 16),
                        Expanded(
                            flex: 2,
                            child: OutlinedTextfield(
                                boxConstraints: BoxConstraints(maxHeight: 32))),
                        SizedBox(width: 16),
                        Expanded(
                            flex: 4,
                            child: OutlinedTextfield(
                                boxConstraints: BoxConstraints(maxHeight: 32))),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return const AddItemPopUp();
                        });
                  },
                  child: Text(
                    "+ Add Item",
                    style: TextStyle(
                        color: Colors.purple.shade300,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Additional Notes",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                const SizedBox(height: 4),
                const TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(8),
                    hintText: "Some additional notes for the client.",
                    hintStyle:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    TextButton(onPressed: () {}, child: const Text("PREVIEW")),
                    const Expanded(child: SizedBox()),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        "Save as Draft",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 24)),
                      child: const Text("Send"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EscrowNumMissing extends StatelessWidget {
  const EscrowNumMissing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.red.shade100,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.red),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(CupertinoIcons.exclamationmark_triangle_fill,
              color: Colors.red, size: 30),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Escrow Number is missing - All  Real Estate Signings require an Escrow Number.You can edit if you want custom Invoice Number.",
                  style: TextStyle(fontSize: 13),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const Expanded(
                      flex: 4,
                      child: Text("Set this as Escrow number for this signing",
                          style: TextStyle(fontSize: 13)),
                    ),
                    const Expanded(flex: 1, child: SizedBox()),
                    Expanded(
                        flex: 1,
                        child: Switch(value: true, onChanged: (value) {}))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AddItemPopUp extends StatelessWidget {
  const AddItemPopUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Add Line Item",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              const Text("Service / Item Name"),
              const SizedBox(height: 4),
              const OutlinedTextfield(
                  boxConstraints: BoxConstraints(maxHeight: 36)),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Cost"),
                      SizedBox(height: 4),
                      OutlinedTextfield(
                          boxConstraints: BoxConstraints(maxHeight: 36)),
                    ],
                  )),
                  const SizedBox(width: 32),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Quantity"),
                      SizedBox(height: 4),
                      OutlinedTextfield(
                          boxConstraints: BoxConstraints(maxHeight: 36)),
                    ],
                  )),
                ],
              ),
              const SizedBox(height: 16),
              Center(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                  ),
                  child: const Text(
                    "Add Line Item",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        )
      ],
    );
  }
}
