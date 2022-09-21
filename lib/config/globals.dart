import 'package:flutter/material.dart';

showBottomSheetWithData(BuildContext context, Widget widget,bool IsDismissable) {
  return showModalBottomSheet(isDismissible: IsDismissable,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      builder: (BuildContext context) {
        return widget;
      });
}
