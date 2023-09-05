import 'package:flutter/material.dart';
import 'package:flutter_aop/extension/ext_string_opt.dart';

const String constantValue = '123';

void main() {
  print(constantValue);
  String aConst = '';
  aConst = '123';
  const String exprValue = 'exprValue1';
  print(exprValue);
  print('statementValue'.trim());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: const Text('avc'),
        ),
      ),
    );
  }
}
