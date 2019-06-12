import 'package:flutter/material.dart';

main()=>  runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp> {
  List<String> _Products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text('Add Product'),
                  ),),
                Column(
                  children: _Products
                      .map((element) =>
                      Card(
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/foods.jpg'),
                            Text(element)
                          ],
                        ),
                      ))
                      .toList(),
                ),
              ])),
    );
  }
}
