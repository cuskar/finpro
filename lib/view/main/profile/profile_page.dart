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
        title: Text("Akun Saya"),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: (() {}),
            child: Text(
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
            padding: EdgeInsets.only(
              top: 20,
              bottom: 60,
              right: 15,
              left: 15,
            ),
            decoration: BoxDecoration(
                color: R.colors.primary,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(9),
                    bottomRight: Radius.circular(9))),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
            margin: EdgeInsets.symmetric(vertical: 18, horizontal: 13),
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Identitas Diri"),
                SizedBox(
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
              if (kIsWeb) {
                await GoogleSignIn(
                  clientId:
                      "776376692409-31n3hfk156fkhkuucqijle4gdc10cq74.apps.googleusercontent.com",
                  scopes: <String>[
                    'email',
                    'https://www.googleapis.com/auth/contacts.readonly',
                  ],
                ).signOut();
              } else {
                await GoogleSignIn().signOut();
              }
              await FirebaseAuth.instance.signOut();
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(LoginPage.route, (route) => false);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 13),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(blurRadius: 7, color: Colors.black.withOpacity(0.2))
                ],
              ),
              child: Row(
                children: [
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
