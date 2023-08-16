import 'package:flutter/material.dart';
import 'package:flutter_interview/presentation/ui/bottom_sheets/bottom_sheet_function.dart';
import 'package:flutter_interview/presentation/ui/widgets/button_widget.dart';
import 'package:flutter_interview/presentation/ui/widgets/text_widget.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Spacer(),
              CustomButton.fill(
                text: "مدیریت فیلتر ها",
                onPressed: () => showBottomSheet(context),
                context: context,
                additionalTextStyle:
                    const TextStyle(fontSize: 16, color: Colors.white),
                backgroundColor: const Color(0xffE6294D),
              )
            ],
          ),
        ),
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showCustomBottomSheet(
      context,
      (context) => SizedBox(
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget.bold(
              "فیلترها",
              context: context,
              additionalStyle: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Spacer(),
            CustomButton.fill(
              text: "اعمال",
              context: context,
              additionalTextStyle:
              const TextStyle(fontSize: 16, color: Colors.white),
              backgroundColor: const Color(0xffE6294D),
            )
          ],
        ),
      ),
    );
  }
}
