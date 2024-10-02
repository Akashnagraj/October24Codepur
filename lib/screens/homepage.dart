import 'package:codepur_hindi/widgets/drawer_content.dart';
import 'package:flutter/material.dart';

class CodePurHindi extends StatelessWidget {
  const CodePurHindi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
        ),
      ),
      body: Center(
        child: Text("30 days of Flutter by CodePur"),
      ),
      drawer: AkashDrawer(),
    );
  }
}
