import 'package:flutter/material.dart';
import 'package:proje_dizi/list_page.dart';


class CategoryPage extends StatelessWidget {
  final String type;

  CategoryPage({required this.type});

  @override
  Widget build(BuildContext context) {
    List<String> categories = ['Aksiyon/Macera', 'Bilim Kurgu', 'Animasyon', 'Aşk', 'Gerilim'];

    return Scaffold(
      appBar: AppBar(
        title: Text(type == 'film' ? 'Film Kategorileri' : 'Dizi Kategorileri'),
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
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.black54.withOpacity(0.6),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                title: Text(
                  categories[index],
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MovieListPage(type: type, category: categories[index]),
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