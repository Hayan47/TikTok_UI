import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionsToolbar extends StatelessWidget {
  const ActionsToolbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //!user photo
          SizedBox(
            width: 55,
            height: 55,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      child: ClipOval(
                        child: CachedNetworkImage(
                          imageUrl: "https://i.imgur.com/7Hm6cYu.jpg",
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),

          //!like
          SizedBox(
            width: 50,
            height: 50,
            child: Column(
              children: [
                Image.asset(
                  'assets/like.png',
                  width: 31,
                  height: 31,
                  color: Colors.white,
                ),
                const SizedBox(height: 2),
                Text(
                  '950k',
                  style: GoogleFonts.karla(
                    fontSize: 12,
                    color: Colors.white.withOpacity(0.9),
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 8),

          //!comment
          SizedBox(
            width: 50,
            height: 50,
            child: Column(
              children: [
                Image.asset(
                  'assets/comment.png',
                  width: 31,
                  height: 31,
                  color: Colors.white,
                ),
                const SizedBox(height: 2),
                Text(
                  '150k',
                  style: GoogleFonts.karla(
                    fontSize: 12,
                    color: Colors.white.withOpacity(0.9),
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 8),

          //!save
          SizedBox(
            width: 50,
            height: 50,
            child: Column(
              children: [
                Image.asset(
                  'assets/save.png',
                  width: 28,
                  height: 28,
                  color: Colors.white,
                ),
                const SizedBox(height: 5),
                Text(
                  '10k',
                  style: GoogleFonts.karla(
                    fontSize: 12,
                    color: Colors.white.withOpacity(0.9),
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          //!share
          SizedBox(
            width: 50,
            height: 50,
            child: Column(
              children: [
                Image.asset(
                  'assets/share.png',
                  width: 28,
                  height: 28,
                  color: Colors.white,
                ),
                const SizedBox(height: 5),
                Text(
                  '9,524',
                  style: GoogleFonts.karla(
                    fontSize: 12,
                    color: Colors.white.withOpacity(0.9),
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          //!music
          Animate(
            autoPlay: true,
            effects: const [
              RotateEffect(
                begin: 0,
                end: 10,
                duration: Duration(seconds: 50),
              )
            ],
            child: SizedBox(
              width: 50,
              height: 50,
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl: "https://i.imgur.com/Gu9TUOr.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
