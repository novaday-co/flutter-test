import 'package:flutter/material.dart';
import 'package:flutter_interview/presentation/ui/styles.dart';
import 'package:flutter_interview/presentation/ui/widgets/text_widget.dart';

class CustomButton extends StatefulWidget {
  final BuildContext context;
  final Color? foregroundColor;
  final Color? percentageColor;
  final bool? isPrimaryCircularLoading;
  final TextStyle? additionalTextStyle;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final String? text;
  final double? width;
  final double? height;
  final bool isEnable;
  final double? borderRadius;
  final Widget? foregroundWidget;

  CustomButton.fill({
    Key? key,
    required this.context,
    this.foregroundColor,
    this.percentageColor,
    this.additionalTextStyle,
    this.onPressed,
    this.width,
    this.height,
    this.text,
    this.isPrimaryCircularLoading,
    this.borderRadius,
    this.foregroundWidget,
    this.isEnable = true,
    Color? backgroundColor,
  })  : style = Styles.fill(
          context: context,
          backgroundColor: backgroundColor,
          additionalTextStyle: additionalTextStyle,
          foregroundColor: foregroundColor,
          borderRadius: borderRadius,
        ),
        super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 48,
      width: widget.width ?? MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: widget.isEnable
            ? () {
                widget.onPressed?.call();
              }
            : null,
        style: widget.style,
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: buttonTitleWidget(context),
        ),
      ),
    );
  }

  Widget buttonTitleWidget(BuildContext context) {
    return widget.foregroundWidget ??
        TextWidget.bold(
          widget.text ?? "",
          context: context,
          additionalStyle: widget.additionalTextStyle,
        );
  }
}
