import 'package:flutter/material.dart';
import 'package:simblue/screens/home.dart';
import 'package:simblue/screens/look.dart';
import 'package:simblue/screens/record.dart';
import 'package:simblue/screens/profile.dart';
import 'package:simblue/shared/colors.dart';
import 'package:simblue/theme/simblue.dart';
import 'package:simblue/widgets/logo.dart';

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
        theme: SimblueThemeData.lightThemeData,
        home: const BottomNavigationBarExample());
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  final List<Widget> _tabList = <Widget>[
    const HomeScreen(),
    const LookScreen(),
    const RecordScreen(),
    const ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.gray50,
        elevation: 0,
        centerTitle: false,
        title: const Logo(),
      ),
      body: Stack(
        children: [
          _tabList.elementAt(_selectedIndex),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Align(
                alignment: const Alignment(0.0, 1.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  child: Container(
                    color: Palette.monoWhite,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BottomNavigationBar(
                        type: BottomNavigationBarType.fixed,
                        backgroundColor: Palette.monoWhite,
                        currentIndex: _selectedIndex,
                        selectedItemColor: Palette.primary400,
                        unselectedItemColor: Palette.gray400,
                        showUnselectedLabels: true,
                        onTap: _onItemTapped,
                        elevation: 0,
                        items: const <BottomNavigationBarItem>[
                          BottomNavigationBarItem(
                            icon: Icon(Icons.home_outlined),
                            label: '홈',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.panorama_fish_eye_outlined),
                            label: '둘러보기',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.bookmark_outline),
                            label: '기록보기',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.person_outline),
                            label: '프로필',
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          )
        ],
      ),
      bottomNavigationBar: const SizedBox(
        height: 0,
        child: Placeholder(),
      ),
    );
  }
}
