import 'package:flutter/material.dart';
import 'package:medfastgo/pages/notifications_page.dart';
import 'package:medfastgo/pages/widgets/navigation_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  Color _selectedItemColor = const Color.fromRGBO(58, 205, 50, 1);
  final Color _unselectedItemColor = Colors.black;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 60.0), // Add padding only at the top
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: 20), // Add left and right margins of 20 pixels
              child: Row(
                children: [
                  const Text(
                    'Tala Chemist',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  const Spacer(), // Pushes icons to the right
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const NotificationsPage(),
                      ));
                    },
                    child: const Icon(
                      Icons.notifications,
                      color: Color.fromRGBO(58, 205, 50, 1),
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Icon(
                  //   Icons.menu,
                  //   color: Colors.green,
                  // ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const NavigationDrawerWidget(),
                      ));
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Color.fromRGBO(58, 205, 50, 1),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10), // Add spacing below the header
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: 20), // Add left margin of 10 pixels
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Color.fromRGBO(58, 205, 50, 1),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Location',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: 20), // Add left margin of 10 pixels
              child: const Row(
                children: [
                  SizedBox(width: 8),
                  Text(
                    'Tala, Machakos',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: 20), // Add left margin of 10 pixels
              child: Container(
                width: 390,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search meds here',
                        ),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Color.fromRGBO(58, 205, 50, 1),
                      // SizedBox(width: 8),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: _selectedItemColor,
        unselectedItemColor: _unselectedItemColor,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _selectedItemColor = const Color.fromRGBO(
                58, 205, 50, 1); // Change color when clicked
          });
          _pageController.jumpToPage(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory),
            label: 'Inventory',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_2),
            label: 'POS',
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