import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewBox extends StatelessWidget {
  final child;

  const NewBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: child,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.grey[300],
          boxShadow: [
            BoxShadow(
              offset: Offset(5.0, 5.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
              color: Colors.grey.shade500,
            ),
            BoxShadow(
              offset: Offset(-5.0, -5.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
              color: Colors.white,
            )
          ]),
    );
  }
}
