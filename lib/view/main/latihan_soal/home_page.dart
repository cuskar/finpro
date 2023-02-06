import 'package:final_project/constants/r.dart';
import 'package:final_project/view/main/latihan_soal/mapel_page.dart';
import 'package:final_project/view/main/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.grey,
      body: SafeArea(
        child: ListView(
          children: [
            _buildUserHomeProfile(),
            _buildTopBanner(context),
            _buildHomeListMapel(),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Terbaru",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 150,
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Image.asset(
                            R.assets.imgBanner1,
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(height: 35),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _buildHomeListMapel() {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 22),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Pilih Pelajaran",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(MapelPage.route);
                  },
                  child: Text(
                    "Lihat Semua",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: R.colors.primary),
                  ))
            ],
          ),
          MapelWidget(),
          MapelWidget(),
          MapelWidget(),
        ],
      ),
    );
  }

  Container _buildTopBanner(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
        // vertical: 15,
      ),
      decoration: BoxDecoration(
          color: R.colors.primary, borderRadius: BorderRadius.circular(20)),
      height: 147,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 15,
            ),
            child: Text(
              "Mau kerjain latihan soal apa hari ini?",
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              R.assets.imgBanner,
              width: MediaQuery.of(context).size.width * 0.5,
            ),
          )
        ],
      ),
    );
  }

  Padding _buildUserHomeProfile() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 15,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, Nama User",
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Selamat datang",
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 12,
                    // fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            R.assets.icProfile,
            width: 35,
            height: 35,
          ),
        ],
      ),
    );
  }
}

class MapelWidget extends StatelessWidget {
  const MapelWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 21.93),
      child: Row(
        children: [
          Container(
            height: 53,
            width: 53,
            padding: EdgeInsets.all(13),
            decoration: BoxDecoration(
                color: R.colors.grey, borderRadius: BorderRadius.circular(10)),
            child: Image.asset(R.assets.icAtom),
          ),
          SizedBox(
            width: 6,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Matematika",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "0/50 Paket latihan soal",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: R.colors.greySubtitleHome,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Stack(
                  children: [
                    Container(
                      height: 5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: R.colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      height: 5,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: R.colors.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
