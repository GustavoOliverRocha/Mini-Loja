import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/7/7d/Marketsepeti_Logo.png',
          width: 40,
          height: 40,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Produtos()],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Widget Produtos() {
  return Card(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.network(
        'https://cdn.awsli.com.br/600x700/374/374573/produto/13526438/cd5adec3bb.jpg',
        width: 400,
        height: 400,
      ),
      const Text(
        'Playstation 3 Superslim novo 400GB de HD',
        style: TextStyle(fontSize: 27),
      ),
      const Text(
        'R\$ 800,00',
        style: TextStyle(fontSize: 25),
      ),
      const Text("em 10x R\$ 10,00", style: TextStyle(fontSize: 14)),
      ElevatedButton(onPressed: () {}, child: Text('Adicionar ao Carrinho'))
    ],
  ));
}
