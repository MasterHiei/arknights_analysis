import 'package:badges/badges.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBadge extends StatelessWidget {
  const AppBadge({
    super.key,
    required this.showBadge,
    this.badgeColor = Colors.red,
    this.position,
    required this.badgeContent,
    required this.child,
  });

  final bool showBadge;
  final Color badgeColor;
  final BadgePosition? position;
  final Widget badgeContent;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Badge(
      badgeContent: badgeContent,
      badgeStyle: BadgeStyle(
        shape: BadgeShape.square,
        borderRadius: BorderRadius.circular(4.w),
        badgeColor: badgeColor,
        padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
      ),
      position: position,
      showBadge: showBadge,
      child: child,
    );
  }
}
