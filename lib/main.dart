import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  
  List<Flexible> cont(String word) {
    List<Flexible> cont = [];
    //  word.split('').forEach((ch) => cont.add(MyContainer(ch)) );

    for (int i = 0; i < word.length; i++) {
      cont.add(
        Flexible(child: myContainer(word[i],i)
        )
        );
    }
    //print(word[0] + word[1]);
    return cont;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: cont("DART"),
          ),
          Expanded(
            child: Column(
             
              children: cont("LESSONS"),
            ),
          )
        ],
      )),
    );
  }

  Container myContainer(var ch, int tone, [double margin=5]) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(margin),
      width: 75,
      height:75,
      color: Colors.orange[900- (tone*100)],
      child:  Text(ch, style:  TextStyle(fontSize: 20),),
    );
  }
}
