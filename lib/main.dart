import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Staggered Gridview",
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
          appBar: AppBar(title: Text("Staggered Gridview")),
          body: MasonryGridView.builder(
            itemCount: 10,
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "lib/image/G G.png",
                  height: 400,
                  width: 400,
                )),
          )),
    );
  }
}
