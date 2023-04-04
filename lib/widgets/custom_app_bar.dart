import 'dart:ui';
import 'package:basecodegetx/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final String? des;
  final Widget? actionButton;
  final Color? titleColor;
  final Color? backgroundColor;
  final VoidCallback? onTitleClick;
  final VoidCallback? onBackPress;
  final Widget? titleWidget;
  final bool? enableBack;
  final bool? centerTitle;
  final double height;
  final String? icon;
  final LinearGradient? gradient;

  CustomAppBar({
    Key? key,
    this.title,
    this.des,
    this.icon,
    this.actionButton,
    this.titleColor,
    this.backgroundColor,
    this.onTitleClick,
    this.onBackPress,
    this.titleWidget,
    this.gradient,
    this.enableBack = true,
    this.centerTitle = false,
    this.height = kToolbarHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: height,
      backgroundColor: backgroundColor ?? Colors.transparent,
      elevation: 0.0,
      flexibleSpace: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          decoration: BoxDecoration(
            gradient: gradient,
            color: backgroundColor ?? context.theme.bottomAppBarColor,
          ),
        ),
      ),
      leading: enableBack!
          ? IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.black,
              ),
              onPressed: () {
                FocusScopeNode currentFocus = FocusScope.of(Get.context!);

                if (!currentFocus.hasPrimaryFocus &&
                    currentFocus.focusedChild != null) {
                  FocusManager.instance.primaryFocus!.unfocus();
                }
                if (onBackPress == null) {
                  Get.back();
                } else {
                  onBackPress!();
                }
              })
          : null,
      title: GestureDetector(
        onTap: onTitleClick ?? () {},
        child: Column(
          children: [
            Text(
              title ?? '',
              textAlign: centerTitle! ? TextAlign.center : TextAlign.left,
              maxLines: 1,
              style: AppStyle.txtPoppinsSemiBold20,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              des ?? '',
              textAlign: centerTitle! ? TextAlign.center : TextAlign.left,
              maxLines: 1,
              style: AppStyle.txtPoppinsSemiBold20,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 0),
          child: actionButton ?? const SizedBox(),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
