import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final double height;

  const LoadingWidget({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: height,
      child:
          Platform.isIOS
              ? CupertinoActivityIndicator(color: Colors.blue)
              : const CircularProgressIndicator(color: Colors.blue),
    );
  }
}
