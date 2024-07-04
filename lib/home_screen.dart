import 'package:color_screen/componentes.dart';
import 'package:flutter/material.dart';

import 'color_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Color Screen',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 10),
        child: GridView.count(
          crossAxisCount: 3,
          physics: const BouncingScrollPhysics(),
          children: colorsList
              .map((colorItem) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ColorScreen(colorItem)));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 10, right: 10),
                      decoration: BoxDecoration(
                          color: colorItem,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(2, 5),
                              color: Colors.grey,
                              blurRadius: 3,
                            ),
                          ]),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
