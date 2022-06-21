import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:spotify_clone/model/current_track.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/screens/playlist_screen.dart';
import 'package:spotify_clone/widgets/current_track.dart';
import 'package:spotify_clone/widgets/side_menu.dart';

import 'data/data.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(!kIsWeb && (Platform.isMacOS || Platform.isLinux || Platform.isWindows)){
    await DesktopWindow.setMinWindowSize(const Size(600,800));
  }
  runApp(
    ChangeNotifierProvider(
      create: (context)=>CurrentTrackModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        scaffoldBackgroundColor: const Color(0xFF121212),
        backgroundColor: const Color(0xFF121212),
        primaryColor: Colors.black,
        accentColor: const Color(0xFF1DB954),
        iconTheme: const IconThemeData().copyWith(color:Colors.white),

        textTheme: TextTheme(
          headline2: const TextStyle(
            color: Colors.white,
            fontSize:32.0,
            fontWeight: FontWeight.bold,
          ),
          headline4: const TextStyle(
            fontSize: 12.0,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
            letterSpacing: 2.0,


          ),
          bodyText1: TextStyle(
            color:Colors.grey,
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.0,
          ),
          bodyText2: TextStyle(
            color:Colors.grey,
            letterSpacing: 1.0,
          )
        ),

      ),

      home: Shell(),
    );
  }
}

class Shell extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Column(
        children: [
          Expanded(
            child:Row(
              children: [
                if(MediaQuery.of(context).size.width>800) SideMenu(),
                const Expanded(
                  child: PlaylistScreen(playlist: lofihiphopPlaylist),
                ),

              ],
            ),
          ),
         CurrentTrack(),
        ],
      ),

    );
  }
}