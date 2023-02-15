import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchIOS extends StatefulWidget {
  const SearchIOS({Key? key}) : super(key: key);

  @override
  State<SearchIOS> createState() => _SearchIOSState();
}

class _SearchIOSState extends State<SearchIOS> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.search,
                      color: Colors.grey,
                    ),
                    Text(
                      "Games, Apps, Stories and More",
                      style: GoogleFonts.openSans(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Discover",
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "chess game",
                style: GoogleFonts.openSans(fontSize: 24, color: Colors.blue),
              ),
              const Divider(),
              Text(
                "jupiter",
                style: GoogleFonts.openSans(fontSize: 24, color: Colors.blue),
              ),
              const Divider(),
              Text(
                "car racing game",
                style: GoogleFonts.openSans(fontSize: 24, color: Colors.blue),
              ),
              const Divider(),
              Text(
                "vi",
                style: GoogleFonts.openSans(fontSize: 24, color: Colors.blue),
              ),
              const SizedBox(
                height: 10,
              ),
              myShortcut(
                imagePath: "assets/games/coc.jpg",
                title: "Clash of Clans",
                subTitle: "Virtual World",
              ),
              const Divider(),
              myShortcut(
                imagePath: "assets/games/asphalt.jpg",
                title: "Asphalt 9",
                subTitle: "Racing Game",
              ),
              const Divider(),
              myShortcut(
                imagePath: "assets/games/wcc3.jpg",
                title: "World Cricket Championship",
                subTitle: "Cricket Game",
              ),
              const Divider(),
              myShortcut(
                imagePath: "assets/games/sort.jpg",
                title: "Sort Game",
                subTitle: "Puzzle Game",
              ),
              const Divider(),
              myShortcut(
                imagePath: "assets/images/invoice.jpg",
                title: "IBill",
                subTitle: "Invoice Generator",
              ),
              const Divider(),
              myShortcut(
                imagePath: "assets/images/khatabook.png",
                title: "Khatabook",
                subTitle: "Daily Expense",
              ),
              const Divider(),
              myShortcut(
                imagePath: "assets/images/discovery.jpg",
                title: "Discovery",
                subTitle: "Entertainment",
              ),
              const Divider(),
              myShortcut(
                imagePath: "assets/images/gallary.jpg",
                title: "Photos",
                subTitle: "Memories",
              ),
            ],
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
