import 'package:flutter/material.dart';
import 'package:fun_skb/screens/call_page.dart';
import 'package:fun_skb/screens/camera_page.dart';
import 'package:fun_skb/screens/chats_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fun_skb/services/counter_bloc.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'SKB Home Page'),
      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: const MyHomePage(title: 'SKB Home Page'),
      ),
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
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    CallsPage(),
    CameraPage(),
    ChatsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
        return IndexedStack(
          index: _selectedIndex,
          children: _pages,
        );
      }),
      // body: Center(
      //   child: _pages.elementAt(_selectedIndex),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        iconSize: 36,
        selectedFontSize: 20,
        selectedIconTheme:
            const IconThemeData(color: Colors.amberAccent, size: 40),
        selectedItemColor: Colors.amberAccent,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        // unselectedIconTheme: const IconThemeData(
        //   color: Colors.deepOrangeAccent,
        // ),
        // unselectedItemColor: Colors.deepOrangeAccent,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        // type: BottomNavigationBarType.shifting,
        // selectedFontSize: 20,
        // selectedIconTheme: const IconThemeData(color: Colors.amberAccent),
        // selectedItemColor: Colors.amberAccent,
        // selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
