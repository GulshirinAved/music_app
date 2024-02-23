import 'package:flutter/material.dart';
import 'package:music_app/presentation/CustomWidgets/appbar.dart';
import 'package:music_app/presentation/Screens/Home/components/sideBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: SideBar(),
      appBar: CustomAppBar(),
    );
  }
}
