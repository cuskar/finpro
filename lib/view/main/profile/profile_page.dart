// ignore_for_file: use_build_context_synchronously

import 'package:final_project/constants/r.dart';
import 'package:final_project/view/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Akun Saya"),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: (() {}),
            child: const Text(
              "Edit",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 60,
              right: 15,
              left: 15,
            ),
            decoration: BoxDecoration(
                color: R.colors.primary,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(9),
                    bottomRight: Radius.circular(9))),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Nama User",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Nama Sekolah User",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  R.assets.icProfile,
                  width: 50,
                  height: 50,
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(blurRadius: 7, color: Colors.black.withOpacity(0.2))
              ],
            ),
            margin: const EdgeInsets.symmetric(vertical: 18, horizontal: 13),
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Identitas Diri"),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Nama Lengkap",
                  style:
                      TextStyle(color: R.colors.greySubtitleHome, fontSize: 12),
                ),
                Text(
                  "Nama Lengkap User",
                  style: TextStyle(color: R.colors.blacklogin, fontSize: 13),
                ),
                Text(
                  "Nama Lengkap",
                  style:
                      TextStyle(color: R.colors.greySubtitleHome, fontSize: 12),
                ),
                Text(
                  "Nama Lengkap User",
                  style: TextStyle(color: R.colors.blacklogin, fontSize: 13),
                ),
                Text(
                  "Nama Lengkap",
                  style:
                      TextStyle(color: R.colors.greySubtitleHome, fontSize: 12),
                ),
                Text(
                  "Nama Lengkap User",
                  style: TextStyle(color: R.colors.blacklogin, fontSize: 13),
                ),
                Text(
                  "Nama Lengkap",
                  style:
                      TextStyle(color: R.colors.greySubtitleHome, fontSize: 12),
                ),
                Text(
                  "Nama Lengkap User",
                  style: TextStyle(color: R.colors.blacklogin, fontSize: 13),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () async {
              await GoogleSignIn().signOut();
              await FirebaseAuth.instance.signOut();
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(LoginPage.route, (route) => false);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 13),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(blurRadius: 7, color: Colors.black.withOpacity(0.2))
                ],
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.exit_to_app,
                    color: Colors.red,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Keluar",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
