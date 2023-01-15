import 'dart:math';

import 'package:flutter/material.dart';

class DateIndicator extends Decoration {
  final BoxPainter _painter;

  DateIndicator({required Color color})
      : _painter = _DateIndicatorPainter(color);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _DateIndicatorPainter extends BoxPainter {
  final Paint _paint;

  _DateIndicatorPainter(Color color)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Rect bounds = offset & configuration.size!;

    Path path = Path();

    const double bottomRadius = 4;
    const double topRadius = 16;

    path.moveTo(bounds.right, bounds.bottom);
    path.lineTo(bounds.left, bounds.bottom);
    path.arcTo(
      Rect.fromCircle(
        center: Offset(bounds.left, bounds.bottom - bottomRadius),
        radius: bottomRadius,
      ),
      pi / 2,
      -pi / 2,
      false,
    );

    path.lineTo(bounds.left + bottomRadius, bounds.top + topRadius);
    path.arcTo(
      Rect.fromCircle(
        center: Offset(
            bounds.left + bottomRadius + topRadius, bounds.top + topRadius),
        radius: topRadius,
      ),
      pi,
      pi / 2,
      false,
    );

    path.lineTo(bounds.right - bottomRadius - topRadius, bounds.top);
    path.arcTo(
      Rect.fromCircle(
        center: Offset(
            bounds.right - bottomRadius - topRadius, bounds.top + topRadius),
        radius: topRadius,
      ),
      3 * pi / 2,
      pi / 2,
      false,
    );

    path.lineTo(bounds.right - bottomRadius, bounds.bottom - bottomRadius);
    path.arcTo(
      Rect.fromCircle(
        center: Offset(bounds.right, bounds.bottom - bottomRadius),
        radius: bottomRadius,
      ),
      pi,
      -pi / 2,
      false,
    );

    path.close();

    canvas.drawPath(path, _paint);
  }
}
