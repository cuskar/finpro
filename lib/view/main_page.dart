import 'package:final_project/constants/r.dart';
import "package:flutter/material.dart";

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static String route = "main_page";
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 20,
              color: Colors.black.withOpacity(0.06))
        ]),
        child: BottomAppBar(
          color: Colors.white,
          child: Container(
            height: 60,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Material(
                      child: InkWell(
                        child: Column(
                          children: [
                            Image.asset(
                              R.assets.icHome,
                              height: 30,
                            ),
                            const Text("Home"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Material(
                      child: InkWell(
                        child: Column(
                          children: [
                            Image.asset(
                              R.assets.icDiscuss,
                              height: 30,
                            ),
                            const Text("Diskusi"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Material(
                      child: InkWell(
                        child: Column(
                          children: [
                            Image.asset(
                              R.assets.icProfile,
                              height: 30,
                            ),
                            const Text("Profile"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
