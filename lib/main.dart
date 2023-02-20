import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tugas pr',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Tugas PR'),
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
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
      	color: Colors.grey.shade100,
        child: Center(
          child: Column(
          	mainAxisAlignment: MainAxisAlignment.center,
          	children: <Widget>[
            	const Text(
              	'Kamu mencet tombolnya sebanyak:',
            	),
            	Text(
              	'$_counter',
              	style: Theme.of(context).textTheme.headlineMedium,
            	),
            	const Text(
            		' kali.'
            	)
          	],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: CurvedNavigationBar(
      	backgroundColor: Colors.grey.shade100,
      	items: <Widget>[
      		Icon(Icons.add, size: 30),
      		Icon(Icons.list, size: 30),
      		Icon(Icons.compare_arrows, size: 30),
    		],
    		onTap: (index) {
      	//Handle button tap
    		},
  		),
    );
  }
}