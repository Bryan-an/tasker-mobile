import 'package:flutter/material.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Filter'), centerTitle: true),
        drawer: const DrawerNavigator(),
        body: const Center(
          child: Text('Filter Screen'),
        ),
      ),
    );
  }
}
