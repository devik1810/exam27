import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List name = [
    "Anna Arletti",
    "Alex Solieri",
    "Archie Mellory",
    "Allison Boals",
    "Alicia Halls",
  ];

  List number = [
    "+39 3280345089",
    "+39 3450345089",
    "+39 3270345055",
    "+44 7323445347",
    "+44 0755345224"
  ];

  List images = [
    "assets/images/Anna Arletti.jpg",
    "assets/images/Alex Solleri.jpg",
    "assets/images/Archie Mellory.jpg",
    "assets/images/Allison Boals.jpg",
    "assets/images/Alicia Halls.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFAFAFC),
          elevation: double.minPositive,
          title: Text(
            "My CONTACT",
            style: TextStyle(color: Colors.grey.shade400),
          ),
        ),
        body: Stack(
          children: [
            Text("A", style: TextStyle(fontSize: 25, color: Colors.blue)),
            ListView.builder(
              itemCount: name.length,
              itemBuilder: (context, index) {
                return wiget(
                  images[index],
                  name[index],
                  number[index],
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget wiget(String images, String name, String number) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("$images"),
        ),
        title: Text(name),
        subtitle: Text(number),
        trailing: Icon(Icons.call),
      ),
    );
  }
}
