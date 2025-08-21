import 'package:flutter/material.dart';
import 'package:project_1/screens/profile.dart';
// pastikan kamu punya file ini

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Daftar halaman yang akan ditampilkan saat navigasi dipilih
  final List<Widget> _pages = const [
    Center(child: Text('Ini halaman Home')),
    Center(child: Text('Ini halaman Search')),
    Center(child: Text('Ini halaman Chat')),
    ProfilePage(), // Gunakan halaman profil yang kamu buat
  ];

  // Fungsi untuk mengubah tab aktif
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Iuran Warga"),
      ),
      body: _pages[_selectedIndex], // Tampilkan halaman sesuai tab
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
