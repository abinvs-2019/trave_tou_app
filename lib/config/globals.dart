import 'package:flutter/material.dart';

showBottomSheetWithData(BuildContext context, Widget widget) {
  return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      builder: (BuildContext context) {
        return widget;
      });
}
