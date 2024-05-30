import 'package:fl_designs/widgets/background.dart';
import 'package:fl_designs/widgets/custom_bottom_navigation.dart';
import 'package:fl_designs/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [Background(), const _HomeBody()],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [PageTitle()],
        ),
      ),
    );
  }
}
