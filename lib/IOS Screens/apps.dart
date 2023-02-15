import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppsIOS extends StatefulWidget {
  const AppsIOS({Key? key}) : super(key: key);

  @override
  State<AppsIOS> createState() => _AppsIOSState();
}

class _AppsIOSState extends State<AppsIOS> {
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
                            child: Image.asset("assets/images/3.jpg"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "WHAT TO WATCH",
                              style: GoogleFonts.openSans(
                                  color: CupertinoColors.link),
                            ),
                          ),
                          Positioned(
                            top: 50,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "New Shows and movies",
                                style: GoogleFonts.openSans(
                                  color: CupertinoColors.link,
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
                              child: Image.asset("assets/images/shemaroo.png"),
                            ),
                          ),
                          title: Text(
                            "Shemaroo me",
                            style: GoogleFonts.openSans(),
                          ),
                          subtitle: Text(
                            "Entertainment",
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
