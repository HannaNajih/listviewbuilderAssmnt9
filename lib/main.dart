import 'package:assignmentnine/detailsscreen.dart';
import 'package:assignmentnine/mock/mockdata.dart';
import 'package:flutter/material.dart';
import '';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Assignment 9'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  itemCount: mockData.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      color: Colors.brown[100],
                      padding: EdgeInsets.all(10),
                      child: Card(
                        // ignore: sort_child_properties_last
                        child: ListTile(
                          selectedColor: Colors.red,
                          subtitle: Text(index.toString()),
                          leading: Image.asset(
                            mockData[index]["profileImage"].toString(),
                          ),
                          title: Text(
                            mockData[index]["first_name"].toString(),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.arrow_right),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                    imageURL: mockData[index]["profileImage"]
                                        .toString(),
                                    flowerName: mockData[index]["first_name"]
                                        .toString(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        color: Colors.grey[200],
                        elevation: 8,
                        shadowColor: Color.fromARGB(255, 42, 29, 44),
                        margin: EdgeInsets.all(20),
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    );
                  })),
            )
          ],
        ),
      ),
    );
  }
}
