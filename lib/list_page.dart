import 'package:flutter/material.dart';
import 'package:proje_dizi/trailer_page.dart';


class MovieListPage extends StatelessWidget {
  final String type;
  final String category;

  MovieListPage({required this.type, required this.category});

  @override
  Widget build(BuildContext context) {
    List<String> items;

    if (type == 'film') {
      switch (category) {
        case 'Aksiyon/Macera':
          items = [
            'Mission: Impossible – Ölümcül Hesaplaşma',
            'The Old Guard',
            'Hızlı ve Öfkeli 10',
            'Gran Turismo',
            'Red Notice',
          ];
          break;
        case 'Bilim Kurgu':
          items = [
            'Yarının Savaşı',
            'Avengers Endgame',
            'Godzilla X Kong',
            'Labirent: Alev Deneyleri',
            'Aquaman 2',
          ];
          break;
        case 'Animasyon':
          items = [
            'Arabalar 3',
            'Çılgın Hırsız 4',
            'Örümcek-Adam: Örümcek Evrenine Geçiş',
            'Ninja Kaplumbağalar: Mutant Kargaşası',
            'Elemental - Doğanın Güçleri',
          ];
          break;
        case 'Aşk':
          items = [
            'Aşk Bu mu?',
            'Rüyanda Görürsün',
            'Yarına Tek Bilet',
            '3391 Kilometre',
            'İstanbul için Son Çağrı',
          ];
          break;
        case 'Gerilim':
          items = [
            'Deadpool ve Wolverine',
            'Glass',
            'Underwater',
            'Labirent: Ölümcül Kaçış',
            'Prey',
          ];
          break;
        default:
          items = [];
      }
    } else {
      switch (category) {
        case 'Aksiyon/Macera':
          items = [
            'Titans',
            'La Casa De Papel',
            'The Gifted',
            'Hawkaye',
            'The Falcon and The Winter Soldier',
          ];
          break;
        case 'Bilim Kurgu':
          items = [
            'MoonKnight',
            'Tribes Of Europa',
            'Black Knight',
            'Iron Fist',
            'Loki',
          ];
          break;
        case 'Animasyon':
          items = [
            'Arcane',
            'What if?',
            'Hızlı ve Öfkeli: Casus Yarışları',
            'Kung Fu Panda: Ejderha Şovalye',
            'Arabalar Yollarda',
          ];
          break;
        case 'Aşk':
          items = [
            'Aşk 101',
            'İlk Aşk İlk Film',
            'İlk ve Son',
            'You',
            'Love Alarm',
          ];
          break;
        case 'Gerilim':
          items = [
            'Dark',
            'Continental: John Wick Dünyasından',
            'Eric',
            'The Nevers',
            'The Veil',
          ];
          break;
        default:
          items = [];
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('$category ${type == 'film' ? 'Filmleri' : 'Dizileri'}'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/wallpaper.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.black54.withOpacity(0.6),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                title: Text(
                  items[index],
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                trailing: Icon(Icons.play_circle, color: Colors.white),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TrailerPage(type: type, category: category, title: items[index]),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
