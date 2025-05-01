import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TrailerPage extends StatefulWidget {
  final String type;
  final String category;
  final String title;

  TrailerPage({required this.type, required this.category, required this.title});

  @override
  _TrailerPageState createState() => _TrailerPageState();
}

class _TrailerPageState extends State<TrailerPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: getYoutubeId(widget.title),
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  String getYoutubeId(String title) {
    switch (title) {
      case 'Mission: Impossible – Ölümcül Hesaplaşma':
        return 'avz06PDqDbM';
      case 'The Old Guard':
        return 'aK-X2d0lJ_s';
      case 'Hızlı ve Öfkeli 10':
        return 'aOb15GVFZxU';
      case 'Gran Turismo':
        return 'GVPzGBvPrzw';
      case 'Red Notice':
        return 'Pj0wz7zu3Ms';
      case 'Yarının Savaşı':
        return 'QPistcpGB8o';
      case 'Avengers Endgame':
        return 'TcMBFSGVi1c';
      case 'Godzilla X Kong':
        return 'qqrpMRDuPfc';
      case 'Labirent: Alev Deneyleri':
        return 'rlBiJE31b5E';
      case 'Aquaman 2':
        return 'UGc5Tzz19UY';
      case 'Arabalar 3':
        return '2LeOH9AGJQM';
      case 'Çılgın Hırsız 4':
        return 'qQlr9-rF32A';
      case 'Örümcek-Adam: Örümcek Evrenine Geçiş':
        return 'uNkETdSI8a4';
      case 'Ninja Kaplumbağalar: Mutant Kargaşası':
        return 'fb2TQHKkEhQ';
      case 'Elemental - Doğanın Güçleri':
        return 'j6EUdN3lEcA';
      case 'Aşk Bu mu?':
        return 'oUdQLzLNBoM';
      case 'Rüyanda Görürsün':
        return 'Kan1qfiZFwc';
      case 'Yarına Tek Bilet':
        return 'Nq-CaORClVE';
      case '3391 Kilometre':
        return '4K_F7k3Plos';
      case 'İstanbul için Son Çağrı':
        return 'eIEGOBsFrRU';
      case 'Deadpool ve Wolverine':
        return 'QoBnuUGcLyM';
      case 'Glass':
        return '95ghQs5AmNk';
      case 'Underwater':
        return 'jCFWEzIVILc';
      case 'Labirent: Ölümcül Kaçış':
        return '2uBWdfvKpjc';
      case 'Prey':
        return 'wZ7LytagKlc';
      case 'Titans':
        return 'vPib9KwCBGs';
      case 'La Casa De Papel':
        return 'VSgm-gcP_GU';
      case 'The Gifted':
        return '3pDdXYf3nfc';
      case 'Hawkaye':
        return '5VYb3B1ETlk';
      case 'The Falcon and The Winter Soldier':
        return 'ojGHE581lsM';
      case 'MoonKnight':
        return 'SjoRKI0zZOA';
      case 'Tribes Of Europa':
        return 'rzSjOGxl6Sc';
      case 'Black Knight':
        return 'lMjpCoEL3FA';
      case 'Iron Fist':
        return 'kvvWB0GwCek';
      case 'Loki':
        return 'dug56u8NN7g';
      case 'Arcane':
        return 'fXmAurh012s';
      case 'What if?':
        return 'TiEVqZ2Bc_c';
      case 'Hızlı ve Öfkeli: Casus Yarışları':
        return 'r78osaLzFN4';
      case 'Kung Fu Panda: Ejderha Şovalye':
        return 'Dqm7RonHUlY';
      case 'Arabalar Yollarda':
        return '5XBlVc1b9Lo';
      case 'Aşk 101':
        return 't0W5CmuSctY';
      case 'İlk Aşk İlk Film':
        return 'VqDlo7ODtdQ';
      case 'İlk ve Son':
        return 'RKqqXMoxUZA';
      case 'You':
        return 'ga1m0wjzscU';
      case 'Love Alarm':
        return '8sXTfzaLmiQ';
      case 'Dark':
        return 'cq2iTHoLrt0';
      case 'Continental: John Wick Dünyasından':
        return '3rQzcP3mUb8';
      case 'Eric':
        return 'eGaAl_8QW2c';
      case 'The Nevers':
        return 'kmeA61z17ck';
      case 'The Veil':
        return '_gzCHavVYUM';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.title} Fragmanı'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/wallpaper.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.blueAccent,
            onReady: () {
              _controller.addListener(() {});
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
