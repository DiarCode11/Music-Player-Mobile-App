import 'package:flutter/material.dart';
import 'Homepage/music_not_found.dart';
import 'Homepage/song_tab.dart';
import 'Homepage/artist_tab.dart';
import 'Homepage/album_tab.dart';
import 'Homepage/file_tab.dart';
import 'PlaylistPage/playlist_page.dart';
import 'FavoritePage/favorite_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Homepage Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentTabIndex = 0; // State untuk menyimpan tab yang sedang aktif
  double _sizeTabFont = 20.0;

  // Daftar konten untuk setiap tab
  List<Widget> _tabViews = [
    MusicNotFound(),
    SongTab(),
    ArtistTab(),
    AlbumTab(),
    FileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Nico Player',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () { 
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FavoritePage(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 191, 116, 2),
                      ),
                      height: 100,
                      child: Center(
                        child: Text(
                          'Favorite',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  )
                ),
                SizedBox(width: 20),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlaylistPage(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      height: 100,
                      child: Center(
                        child: Text(
                          'Playlist',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  )
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentTabIndex = 0; // Set tab Lagu aktif
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                        border: _currentTabIndex == 0
                            ? Border(
                                bottom: BorderSide(
                                  width: 2.0,
                                  color: Colors.white, // Warna bawah tab saat aktif
                                ),
                              )
                            : null,
                      ),
                      child: Text(
                        'Lagu',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: _sizeTabFont,
                          fontWeight: FontWeight.bold,
                          color: _currentTabIndex == 0
                              ? Colors.white
                              : Colors.grey, // Warna teks tab saat aktif dan tidak aktif
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentTabIndex = 1; // Set tab Artis aktif
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                        border: _currentTabIndex == 1
                            ? Border(
                                bottom: BorderSide(
                                  width: 2.0,
                                  color: Colors.white,
                                ),
                              )
                            : null,
                      ),
                      child: Text(
                        'Artis',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: _sizeTabFont,
                          fontWeight: FontWeight.bold,
                          color: _currentTabIndex == 1
                              ? Colors.white
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentTabIndex = 2; // Set tab Album aktif
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                        border: _currentTabIndex == 2
                            ? Border(
                                bottom: BorderSide(
                                  width: 2.0,
                                  color: Colors.white,
                                ),
                              )
                            : null,
                      ),
                      child: Text(
                        'Album',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: _sizeTabFont,
                          fontWeight: FontWeight.bold,
                          color: _currentTabIndex == 2
                              ? Colors.white
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentTabIndex = 3; // Set tab Folder aktif
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                        border: _currentTabIndex == 3
                            ? Border(
                                bottom: BorderSide(
                                  width: 2.0,
                                  color: Colors.white,
                                ),
                              )
                            : null,
                      ),
                      child: Text(
                        'Folder',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: _sizeTabFont,
                          fontWeight: FontWeight.bold,
                          color: _currentTabIndex == 3
                              ? Colors.white
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: _tabViews[_currentTabIndex], // Tampilkan konten dari tab yang aktif
            )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'File tidak ditemukan',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 18
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.play_circle_outline_rounded,
                          color: Colors.grey[500],
                          size: 30
                        ),
                        SizedBox(
                          width: 10
                        ),
                        Icon(
                          Icons.skip_next_rounded,
                          color: Colors.grey[500],
                          size: 40
                        ),
                      ],
                    )                                     
                  ],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
