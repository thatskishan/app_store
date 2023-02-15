import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArcadeIOS extends StatefulWidget {
  const ArcadeIOS({Key? key}) : super(key: key);

  @override
  State<ArcadeIOS> createState() => _ArcadeIOSState();
}

class _ArcadeIOSState extends State<ArcadeIOS> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        border: Border.all(color: CupertinoColors.white),
        leading: Text(
          "Arcade",
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
                const SizedBox(
                  height: 20,
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
                          "HOT FAVOURITES",
                          style: GoogleFonts.openSans(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "New apps this week",
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                        ),
                      ),
                      myShortcut(
                        imagePath: "assets/images/invoice.jpg",
                        title: "IBill",
                        subTitle: "Invoice Generator",
                      ),
                      myShortcut(
                        imagePath: "assets/images/khatabook.png",
                        title: "Khatabook",
                        subTitle: "Daily Expense",
                      ),
                      myShortcut(
                        imagePath: "assets/images/discovery.jpg",
                        title: "Discovery",
                        subTitle: "Entertainment",
                      ),
                      myShortcut(
                        imagePath: "assets/images/gallary.jpg",
                        title: "Photos",
                        subTitle: "Memories",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
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
