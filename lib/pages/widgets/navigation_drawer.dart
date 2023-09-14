import 'package:flutter/material.dart';
import 'package:medfastgo/pages/Home_Page.dart';
import 'package:medfastgo/pages/inventory_page.dart';
import 'package:medfastgo/pages/log_out.dart';
import 'package:medfastgo/pages/my_orders.dart';
import 'package:medfastgo/pages/notifications_page.dart';
import 'package:medfastgo/pages/point_of_sale.dart';
import 'package:medfastgo/pages/profile_page.dart';
import 'package:medfastgo/pages/settings_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(const EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              const Spacer(),
              const CircleAvatar(
                radius: 24,
                backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                child: Icon(Icons.add_comment_outlined, color: Colors.white),
              )
            ],
          ),
        ),
      );

  Widget buildSearchField() {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  Widget build(BuildContext context) {
    final name = 'Tala Chemist';
    final email = 'talachemist@gmail.com';
    final urlImage =
        'https://images.unsplash.com/photo-1603706580932-6befcf7d8521?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80';

    return Drawer(
      child: Material(
        color: const Color.fromRGBO(58, 205, 50, 1),
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UserPage(
                  name: 'Tala Chemist',
                  urlImage: urlImage,
                ),
              )),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  buildSearchField(),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Home',
                    icon: Icons.home,
                    onClicked: () {
                      Navigator.of(context).pop(); // Close the drawer
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            HomePage(), // Navigate to the HomePage
                      ));
                    },
                  ),
                  buildMenuItem(
                    text: 'Profile',
                    icon: Icons.person_2,
                    onClicked: () {
                      Navigator.of(context).pop(); // Close the drawer
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => UserPage(
                          name:
                              'Tala Chemist', // Provide the required name argument
                          urlImage:
                              urlImage, // Provide the required urlImage argument
                        ),
                      ));
                    },
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Notifications',
                    icon: Icons.notifications,
                    onClicked: () {
                      Navigator.of(context).pop(); // Close the drawer
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            NotificationsPage(), // Navigate to the HomePage
                      ));
                    },
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Inventory',
                    icon: Icons.inventory,
                    onClicked: () {
                      Navigator.of(context).pop(); // Close the drawer
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            InventoryPage(), // Navigate to the HomePage
                      ));
                    },
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'POS',
                    icon: Icons.shop_2,
                    onClicked: () {
                      Navigator.of(context).pop(); // Close the drawer
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            PointOfSalePage(), // Navigate to the HomePage
                      ));
                    },
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'My Orders',
                    icon: Icons.shopping_bag,
                    onClicked: () {
                      Navigator.of(context).pop(); // Close the drawer
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            MyOrdersPage(), // Navigate to the HomePage
                      ));
                    },
                  ),
                  const SizedBox(height: 16),
                  const Divider(color: Colors.white70),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Settings',
                    icon: Icons.settings,
                    onClicked: () {
                      Navigator.of(context).pop(); // Close the drawer
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            SettingsPage(), // Navigate to the HomePage
                      ));
                    },
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Log Out',
                    icon: Icons.logout,
                    onClicked: () {
                      Navigator.of(context).pop(); // Close the drawer
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            LogOutPage(), // Navigate to the HomePage
                      ));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
