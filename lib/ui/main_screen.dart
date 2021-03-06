import 'package:flutter/material.dart';
import 'package:flutter_tech_test/ui/pages/shifts_screen.dart';
import 'package:flutter_tech_test/ui/widgets/custom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade100,
        body: SafeArea(
            bottom: false,
            left: false,
            right: false,
            top: true,
            child: Stack(
              children: [
                const ShiftScreen(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    BulldozerNavbar()
                  ],
                )
              ],
            )),
        //bottomNavigationBar: const BulldozerNavbar()
    );
  }
}
