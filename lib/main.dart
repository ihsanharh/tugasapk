import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tugasapk/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tugas pr',
      theme: lightThemeData(context),
      themeMode: ThemeMode.system,
      darkTheme: darkThemeData(context),
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
  int _currentPage = 0;

  void _setPage(int pageIndex) {
    setState(() {
      _currentPage = pageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
  	var screen = MediaQuery.of(context).size;
  	
    return Scaffold(
      	body: Stack(
      		children: <Widget>[
      			Container(
      				height: screen.height * .45,
      				decoration: BoxDecoration(
      					color: Colors.green,
      				),
      			),
      			Text('$_currentPage'),
      		],
      ),
      bottomNavigationBar: CurvedNavigationBar(
      	items: <Widget>[
      		Icon(Icons.home_rounded, size: 30),
      		Icon(Icons.calendar_month, size: 30),
      		Icon(Icons.settings, size: 30),
    		],
      	index: _currentPage,
      	color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
      	backgroundColor: Colors.transparent,
      	onTap: (index) {
    			_setPage(index);
    		},
      	animationDuration: Duration(milliseconds: 100),
  		),
    );
  }
}