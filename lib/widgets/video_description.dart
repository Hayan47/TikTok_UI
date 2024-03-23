import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';

class VideoDescription extends StatelessWidget {
  const VideoDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 15, bottom: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Hayan Bouobaid',
                  style: GoogleFonts.karla(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ' . 20h ago',
                  style: GoogleFonts.karla(
                    fontSize: 18,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
            Text(
              'TikTok Coding Video #Flutter #SpeedCode #Programing',
              style: GoogleFonts.karla(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Image.asset(
                  'assets/music.png',
                  color: Colors.white,
                  width: 18,
                  height: 18,
                ),
                SizedBox(
                  height: 20,
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  child: Marquee(
                    text: 'Dua Lipa - Future Nostaligia - break my heart',
                    style: GoogleFonts.karla(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                    scrollAxis: Axis.horizontal,
                    blankSpace: 20,
                    velocity: 30,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
