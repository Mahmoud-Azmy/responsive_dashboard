import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_container.dart';
import 'package:responsive_dash_board/views/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        SizedBox(
          height: 24,
        ),
        LatestTransaction()
      ],
    ));
  }
}
