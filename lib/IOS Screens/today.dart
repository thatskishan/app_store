import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodayIOS extends StatefulWidget {
  const TodayIOS({Key? key}) : super(key: key);

  @override
  State<TodayIOS> createState() => _TodayIOSState();
}

class _TodayIOSState extends State<TodayIOS> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        border: Border.all(color: CupertinoColors.white),
        leading: Text(
          "Today",
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.bold,
            fontSize: 36,
          ),
        ),
        trailing: const CircleAvatar(
          backgroundImage: AssetImage("assets/images/account_dp.jpg"),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            child: Image.asset("assets/images/1.jpg"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "GET STARTED",
                              style: GoogleFonts.openSans(
                                  color: CupertinoColors.white),
                            ),
                          ),
                          Positioned(
                            top: 50,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "5 Apps Tips and\ntricks",
                                style: GoogleFonts.openSans(
                                  color: CupertinoColors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CupertinoListTile(
                          leading: Transform.scale(
                            scale: 2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset("assets/images/instagram.jpg"),
                            ),
                          ),
                          title: Text(
                            "Instagram",
                            style: GoogleFonts.openSans(),
                          ),
                          subtitle: Text(
                            "Photo & Videp",
                            style: GoogleFonts.openSans(),
                          ),
                          trailing: CupertinoButton(
                            borderRadius: BorderRadius.circular(15),
                            onPressed: () {},
                            child: Text(
                              "Install",
                              style: GoogleFonts.openSans(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "OUR FAVOURITES",
                          style: GoogleFonts.openSans(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Top apps this week",
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                        ),
                      ),
                      myShortcut(
                        imagePath: "assets/images/cred.png",
                        title: "CRED",
                        subTitle: "Credit card bill payment",
                      ),
                      myShortcut(
                        imagePath: "assets/images/instagram.jpg",
                        title: "Instagram",
                        subTitle: "Photo & Video",
                      ),
                      myShortcut(
                        imagePath: "assets/images/lenskart.png",
                        title: "Lenskart",
                        subTitle: "Eyewear",
                      ),
                      myShortcut(
                        imagePath: "assets/images/snapchat.png",
                        title: "Snapchat",
                        subTitle: "Share the moment",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget myShortcut({
    required String imagePath,
    required String title,
    required String subTitle,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CupertinoListTile(
        leading: Transform.scale(
          scale: 2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(imagePath),
          ),
        ),
        title: Text(
          title,
          style: GoogleFonts.openSans(),
        ),
        subtitle: Text(
          subTitle,
          style: GoogleFonts.openSans(),
        ),
        trailing: CupertinoButton(
          borderRadius: BorderRadius.circular(15),
          onPressed: () {},
          child: Text(
            "Install",
            style: GoogleFonts.openSans(),
          ),
        ),
      ),
    );
  }
}
