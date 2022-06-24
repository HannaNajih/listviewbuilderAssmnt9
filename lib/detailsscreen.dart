import 'package:assignmentnine/mock/mockdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
    required this.imageURL,
    required this.flowerName,
  }) : super(key: key);

  final String imageURL;
  final String flowerName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    height: 197,
                    width: 229,
                    child: Image.asset(imageURL)),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                child: Text(flowerName),
              ))
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(10),
                height: 300,
                width: 300,
                color: Color.fromARGB(255, 202, 122, 195),
                child: Text(
                    flowerName), //agar bashe descripttiion ba mochdata zyad bkai ler aynwse la bre ama
              ))
            ],
          ),
        ],
      ),
    );
  }
}
