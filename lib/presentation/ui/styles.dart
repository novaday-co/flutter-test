import 'package:flutter/material.dart';

class Styles {

  static const String persianFont = "IranYekan";

  static const String englishFont = "IranYekan";

  static String fontFamily = persianFont;

  static TextStyle headline1(BuildContext context) => TextStyle(
    textBaseline: TextBaseline.alphabetic,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 48,
    color: Theme.of(context).colorScheme.tertiary,
    fontFamilyFallback: const [
      englishFont,
      persianFont,
    ],
  );

  static TextStyle headline2(BuildContext context) => TextStyle(
    textBaseline: TextBaseline.alphabetic,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 40,
    color: Theme.of(context).colorScheme.tertiary,
    fontFamilyFallback: const [
      englishFont,
      persianFont,
    ],
  );

  static TextStyle headline3(BuildContext context) => TextStyle(
    textBaseline: TextBaseline.alphabetic,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 36,
    color: Theme.of(context).colorScheme.tertiary,
    fontFamilyFallback: const [
      englishFont,
      persianFont,
    ],
  );

  static TextStyle headline4(BuildContext context) => TextStyle(
    textBaseline: TextBaseline.alphabetic,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 32,
    color: Theme.of(context).colorScheme.tertiary,
    fontFamilyFallback: const [
      englishFont,
      persianFont,
    ],
  );

  static TextStyle headline5(BuildContext context) => TextStyle(
    textBaseline: TextBaseline.alphabetic,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 28,
    color: Theme.of(context).colorScheme.tertiary,
    fontFamilyFallback: const [
      englishFont,
      persianFont,
    ],
  );

  static TextStyle headline6(BuildContext context) => TextStyle(
    textBaseline: TextBaseline.alphabetic,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 24,
    color: Theme.of(context).colorScheme.tertiary,
    fontFamilyFallback: const [
      englishFont,
      persianFont,
    ],
  );

  static TextStyle button(BuildContext context) => TextStyle(
    textBaseline: TextBaseline.alphabetic,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: Theme.of(context).colorScheme.tertiary,
    fontFamilyFallback: const [
      englishFont,
      persianFont,
    ],
  );

  static TextStyle subtitle1(BuildContext context) => TextStyle(
    textBaseline: TextBaseline.alphabetic,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 20,
    color: Theme.of(context).colorScheme.onTertiary,
    fontFamilyFallback: const [
      englishFont,
      persianFont,
    ],
  );

  static TextStyle subtitle2(BuildContext context) => TextStyle(
    textBaseline: TextBaseline.alphabetic,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: Theme.of(context).colorScheme.tertiaryContainer,
    fontFamilyFallback: const [
      englishFont,
      persianFont,
    ],
  );

  static TextStyle bodyText1(BuildContext context) => TextStyle(
    textBaseline: TextBaseline.alphabetic,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: Theme.of(context).colorScheme.tertiary,
    fontFamilyFallback: const [
      englishFont,
      persianFont,
    ],
  );

  static TextStyle bodyText2(BuildContext context) => TextStyle(
    textBaseline: TextBaseline.alphabetic,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Theme.of(context).colorScheme.tertiary,
    fontFamilyFallback: const [
      englishFont,
      persianFont,
    ],
  );

  static TextStyle caption(BuildContext context) => TextStyle(
    textBaseline: TextBaseline.alphabetic,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: Theme.of(context).colorScheme.tertiary,
    fontFamilyFallback: const [
      englishFont,
      persianFont,
    ],
  );

  static ButtonStyle fill({
    required BuildContext context,
    Color? backgroundColor,
    Color? foregroundColor,
    TextStyle? additionalTextStyle,
    double? borderRadius,
  }) =>
      ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (states) {
            if (states.contains(MaterialState.disabled)) {
              return Theme.of(context).colorScheme.surfaceTint;
            }
            return backgroundColor ?? Theme.of(context).colorScheme.primary;
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith((state) {
          if (state.contains(MaterialState.disabled)) {
            return Theme.of(context).colorScheme.tertiaryContainer;
          }
          return foregroundColor ??
              Theme.of(context).colorScheme.onTertiaryContainer;
        }),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
          ),
        ),
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        overlayColor: MaterialStateColor.resolveWith(
              (states) => Theme.of(context).colorScheme.inverseSurface,
        ),
        elevation: MaterialStateProperty.all<double>(0),
        textStyle: MaterialStateProperty.resolveWith(
              (state) {
            if (state.contains(MaterialState.disabled)) {
              return Styles.button(context)
                  .copyWith(
                  color: Theme.of(context).colorScheme.tertiaryContainer,
                  fontSize: 18.0)
                  .merge(additionalTextStyle);
            }
            return Styles.button(context)
                .copyWith(
                color: Theme.of(context).colorScheme.onTertiaryContainer,
                fontSize: 18.0)
                .merge(additionalTextStyle);
          },
        ),
      );
}