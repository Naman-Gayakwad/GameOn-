// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// //

// class YoutubePlayer extends StatefulWidget {
//   const YoutubePlayer({super.key});

//   @override
//   State<YoutubePlayer> createState() => _YoutubePlayerState();

//   static convertUrlToId(String videoURL) {}
// }

// class _YoutubePlayerState extends State<YoutubePlayer> {
//   final videoURL = 'https://youtu.be/d4S4twjeWTs';
//   late YoutubePlayerController _controller;

//   @override
//   void initState() {
//     final videoID = YoutubePlayer.convertUrlToId(videoURL);
//     _controller = YoutubePlayerController(
//         initialVideoId: videoID!, flags: YoutubePlayerFlags());
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: YoutubePlayer(
//         controller: _controller,
//         sh
//       ),
//     );
//   }
// }
