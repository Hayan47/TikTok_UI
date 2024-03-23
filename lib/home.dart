import 'package:flutter/material.dart';
import 'package:tiktok/widgets/video.dart';

class Home extends StatelessWidget {
  final PageController _pageController =
      PageController(keepPage: true, initialPage: 0);
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Image.asset(
            'assets/live.png',
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Image.asset(
              'assets/search.png',
              width: 30,
              height: 30,
              color: Colors.white,
            ),
          )
        ],
        title: const Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Following',
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
            SizedBox(width: 15.0),
            Column(
              children: [
                Text(
                  'For you',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        children: const [
          Video(
              videoUrl:
                  'https://firebasestorage.googleapis.com/v0/b/drivolution.appspot.com/o/myfiles%2F2.mp4?alt=media&token=0bc3e944-a903-49ac-b27b-586f2bbf4fdc'),
          Video(
              videoUrl:
                  'https://firebasestorage.googleapis.com/v0/b/drivolution.appspot.com/o/myfiles%2F1.mp4?alt=media&token=6149630e-4250-4c8a-9f21-fe40193e6211'),
          Video(
              videoUrl:
                  'https://firebasestorage.googleapis.com/v0/b/drivolution.appspot.com/o/myfiles%2F3.mp4?alt=media&token=bcddd500-2b2f-49f6-b442-5feec0dce6e0'),
          Video(
              videoUrl:
                  'https://firebasestorage.googleapis.com/v0/b/drivolution.appspot.com/o/myfiles%2F4.mp4?alt=media&token=a0caeb1c-a101-4de8-83e0-f4be06d0c381'),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 2),
        color: Colors.black,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset('assets/home.png', width: 30, height: 30),
                const Text(
                  'Home',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset('assets/friends.png', width: 30, height: 30),
                const Text(
                  'Friends',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset('assets/add.png', width: 43, height: 43),
              ],
            ),
            Column(
              children: [
                Image.asset('assets/message.png', width: 26, height: 26),
                const Text(
                  'Inbox',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset('assets/profile.png', width: 30, height: 30),
                const Text(
                  'Profile',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
