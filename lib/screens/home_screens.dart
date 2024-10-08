import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makeupstores/widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 139, 0, 46),
      appBar: homeAppBar(),
      body: const HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 139, 0, 46),
      elevation: 0,
      title: Text(
        "welcome to Make up Store",
        style: GoogleFonts.getFont('Tangerine',
            fontSize: 38, fontWeight: FontWeight.w900),
      ),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black87,
          ),
        )
      ],
    );
  }
}
