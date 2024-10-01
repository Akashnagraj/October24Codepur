import 'package:flutter/material.dart';

class CodePurHindi extends StatelessWidget {
  const CodePurHindi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 67, 45, 53),
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Text("30 days of Flutter by CodePur"),
      ),
      drawer: Drawer(),
    );
  }
}
