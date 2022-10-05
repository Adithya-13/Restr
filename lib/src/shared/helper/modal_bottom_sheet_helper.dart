import 'dart:io';

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:restr/src/constants/app_sizes.dart';

void showRegularBottomSheet(context, {required Widget child}) {
  if (Platform.isIOS) {
    showCupertinoModalBottomSheet(
      expand: false,
      context: context,
      enableDrag: true,
      topRadius: const Radius.circular(Sizes.p20),
      backgroundColor: Colors.transparent,
      builder: (context) => child,
    );
    return;
  }
  showMaterialModalBottomSheet(
    expand: false,
    context: context,
    enableDrag: true,
    backgroundColor: Colors.transparent,
    builder: (context) => child,
  );
}