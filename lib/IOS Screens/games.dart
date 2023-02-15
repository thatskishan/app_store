import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GamesIOS extends StatefulWidget {
  const GamesIOS({Key? key}) : super(key: key);

  @override
  State<GamesIOS> createState() => _GamesIOSState();
}

class _GamesIOSState extends State<GamesIOS> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        border: Border.all(color: CupertinoColors.white),
        leading: Text(
          "Games",
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
                            child: Image.asset("assets/images/2.jpg"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "NOW TRENDING",
                              style: GoogleFonts.openSans(
                                  color: CupertinoColors.white),
                            ),
                          ),
                          Positioned(
                            top: 50,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Special events and offers",
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
                              child: Image.asset("assets/games/8ball.jpg"),
                            ),
                          ),
                          title: Text(
                            "8 Ball Pool",
                            style: GoogleFonts.openSans(),
                          ),
                          subtitle: Text(
                            "Pool Game",
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
                          "Top Game this week",
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                        ),
                      ),
                      myShortcut(
                        imagePath: "assets/games/coc.jpg",
                        title: "Clash of Clans",
                        subTitle: "Virtual World",
                      ),
                      myShortcut(
                        imagePath: "assets/games/asphalt.jpg",
                        title: "Asphalt 9",
                        subTitle: "Racing Game",
                      ),
                      myShortcut(
                        imagePath: "assets/games/wcc3.jpg",
                        title: "World Cricket Championship",
                        subTitle: "Cricket Game",
                      ),
                      myShortcut(
                        imagePath: "assets/games/sort.jpg",
                        title: "Sort Game",
                        subTitle: "Puzzle Game",
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
