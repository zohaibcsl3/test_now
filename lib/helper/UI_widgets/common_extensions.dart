import 'package:flutter/material.dart';

/// ------------------------------------------------------------
/// 🟦 PADDING EXTENSIONS
/// ------------------------------------------------------------
extension WidgetPaddingExtensions on Widget {
  /// Padding All
  Widget paddingAll(double value) =>
      Padding(padding: EdgeInsets.all(value), child: this);

  /// Padding Horizontal
  Widget paddingHorizontal(double value) => Padding(
    padding: EdgeInsets.symmetric(horizontal: value),
    child: this,
  );

  /// Padding Vertical
  Widget paddingVertical(double value) => Padding(
    padding: EdgeInsets.symmetric(vertical: value),
    child: this,
  );

  /// Padding Only
  Widget paddingOnly({
    double top = 0,
    double bottom = 0,
    double left = 0,
    double right = 0,
  }) => Padding(
    padding: EdgeInsets.only(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
    ),
    child: this,
  );

  /// Padding Top
  Widget paddingTop(double value) => Padding(
    padding: EdgeInsets.only(top: value),
    child: this,
  );

  /// Padding Bottom
  Widget paddingBottom(double value) => Padding(
    padding: EdgeInsets.only(bottom: value),
    child: this,
  );

  /// Padding Left
  Widget paddingLeft(double value) => Padding(
    padding: EdgeInsets.only(left: value),
    child: this,
  );

  /// Padding Right
  Widget paddingRight(double value) => Padding(
    padding: EdgeInsets.only(right: value),
    child: this,
  );
}

/// ------------------------------------------------------------
/// 🟩 MARGIN EXTENSIONS
/// ------------------------------------------------------------
extension WidgetMarginExtensions on Widget {
  /// Margin All
  Widget marginAll(double value) =>
      Container(margin: EdgeInsets.all(value), child: this);

  /// Margin Horizontal
  Widget marginHorizontal(double value) => Container(
    margin: EdgeInsets.symmetric(horizontal: value),
    child: this,
  );

  /// Margin Vertical
  Widget marginVertical(double value) => Container(
    margin: EdgeInsets.symmetric(vertical: value),
    child: this,
  );

  /// Margin Only
  Widget marginOnly({
    double top = 0,
    double bottom = 0,
    double left = 0,
    double right = 0,
  }) => Container(
    margin: EdgeInsets.only(top: top, bottom: bottom, left: left, right: right),
    child: this,
  );

  /// Margin Top
  Widget marginTop(double value) => Container(
    margin: EdgeInsets.only(top: value),
    child: this,
  );

  /// Margin Bottom
  Widget marginBottom(double value) => Container(
    margin: EdgeInsets.only(bottom: value),
    child: this,
  );

  /// Margin Left
  Widget marginLeft(double value) => Container(
    margin: EdgeInsets.only(left: value),
    child: this,
  );

  /// Margin Right
  Widget marginRight(double value) => Container(
    margin: EdgeInsets.only(right: value),
    child: this,
  );
}

/// ------------------------------------------------------------
/// 🟧 DECORATION EXTENSIONS (Radius, Shadow, Borders)
/// ------------------------------------------------------------
extension WidgetDecorationExtensions on Widget {
  /// Corner Radius
  Widget withCornerRadius(double radius) =>
      ClipRRect(borderRadius: BorderRadius.circular(radius), child: this);

  /// Custom Border Radius
  Widget withCustomRadius(BorderRadius radius) =>
      ClipRRect(borderRadius: radius, child: this);

  /// Add Shadow
  Widget withShadow({
    double blurRadius = 12,
    double spreadRadius = 0,
    Offset offset = const Offset(0, 4),
    Color color = const Color(0x33000000),
  }) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          blurRadius: blurRadius,
          spreadRadius: spreadRadius,
          offset: offset,
          color: color,
        ),
      ],
    ),
    child: this,
  );

  /// Add Border
  Widget withBorder({
    Color color = Colors.black12,
    double width = 1,
    double radius = 8,
  }) => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(color: color, width: width),
    ),
    child: this,
  );

  /// Background Color
  Widget withBackground(Color color) => Container(color: color, child: this);

  /// Gradient Background
  Widget withGradient(Gradient gradient) => Container(
    decoration: BoxDecoration(gradient: gradient),
    child: this,
  );
}

/// ------------------------------------------------------------
/// 🟪 SPACING / GAP UTILITIES
/// ------------------------------------------------------------
class Gap extends StatelessWidget {
  final double size;

  const Gap(this.size, {super.key});

  @override
  Widget build(BuildContext context) => SizedBox(height: size, width: size);
}

extension GapExtensions on num {
  /// Vertical gap: 20.hGap
  Widget get hGap => SizedBox(height: toDouble());

  /// Horizontal gap: 20.wGap
  Widget get wGap => SizedBox(width: toDouble());
}
