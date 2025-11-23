import 'package:flutter/material.dart';
import 'package:hussam_protfolio/core/widgets/my_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(50), child: MyAppBar()),
      body: Center(child: Text('Hello World!')),
    );
  }
}
