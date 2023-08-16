import 'dart:ui';
import 'package:flutter/material.dart';

Future<T?> showCustomBottomSheet<T>(
  BuildContext context,
  Widget Function(BuildContext context) builder, {
  bool? isScrollControlled,
  bool? isDismissible,
}) async {
  return showModalBottomSheet<T>(
    context: context,
    backgroundColor: Colors.transparent,
    isDismissible: isDismissible ?? true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    enableDrag: isDismissible ?? true,
    isScrollControlled: isScrollControlled ?? true,
    builder: (context) => BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            padding: const EdgeInsets.all(16),
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(15)
              ),
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Container(
                        width: 50,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          borderRadius: BorderRadius.circular(1000),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: builder.call(context),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
