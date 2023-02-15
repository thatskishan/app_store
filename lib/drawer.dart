import 'package:app_store/Globals/globals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff008069),
            ),
            accountName: Text("Admin"),
            accountEmail: Text("AdminPlayStore@mail.com"),
          ),
          Expanded(
              flex: 3,
              child: ListView(
                children: [
                  ListTile(
                    leading: const Icon(Icons.games),
                    title: Text(
                      "Games",
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.apps),
                    title: Text(
                      "Apps",
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.movie_creation_outlined),
                    title: Text(
                      "Movies & TV",
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.book),
                    title: Text(
                      "Books",
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                ],
              )),
          const Divider(
            thickness: 2,
          ),
          Expanded(
            flex: 2,
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text(
                    "Convert to App Store",
                    style: GoogleFonts.poppins(),
                  ),
                  trailing: Switch(
                    value: Globals.isAndroid,
                    onChanged: (val) => setState(
                      () => Globals.isAndroid = val,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.close),
                  title: Text(
                    "Close",
                    style: GoogleFonts.poppins(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
