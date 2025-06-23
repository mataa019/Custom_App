import 'package:flutter/material.dart';
import '../../Component/custom_navigation_bar.dart';

enum NavigationBarStyle { custom, modern, floating }

class NavigationBarDemo extends StatefulWidget {
  const NavigationBarDemo({super.key});

  @override
  State<NavigationBarDemo> createState() => _NavigationBarDemoState();
}

class _NavigationBarDemoState extends State<NavigationBarDemo> {
  int _currentIndex = 0;
  NavigationBarStyle _selectedStyle = NavigationBarStyle.custom;

  final List<NavigationItem> _navigationItems = [
    const NavigationItem(
      icon: Icons.home_outlined,
      activeIcon: Icons.home,
      label: 'Home',
    ),
    const NavigationItem(
      icon: Icons.search_outlined,
      activeIcon: Icons.search,
      label: 'Search',
    ),
    const NavigationItem(
      icon: Icons.favorite_outline,
      activeIcon: Icons.favorite,
      label: 'Favorites',
    ),
    const NavigationItem(
      icon: Icons.person_outline,
      activeIcon: Icons.person,
      label: 'Profile',
    ),
  ];

  final List<Widget> _screens = [
    const DemoScreen(title: 'Home', icon: Icons.home, color: Colors.blue),
    const DemoScreen(title: 'Search', icon: Icons.search, color: Colors.green),
    const DemoScreen(
      title: 'Favorites',
      icon: Icons.favorite,
      color: Colors.red,
    ),
    const DemoScreen(
      title: 'Profile',
      icon: Icons.person,
      color: Colors.purple,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Bar Demo'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          PopupMenuButton<NavigationBarStyle>(
            icon: const Icon(Icons.style),
            onSelected: (style) {
              setState(() {
                _selectedStyle = style;
              });
            },
            itemBuilder:
                (context) => [
                  const PopupMenuItem(
                    value: NavigationBarStyle.custom,
                    child: Text('Custom Animated'),
                  ),
                  const PopupMenuItem(
                    value: NavigationBarStyle.modern,
                    child: Text('Modern Material 3'),
                  ),
                  const PopupMenuItem(
                    value: NavigationBarStyle.floating,
                    child: Text('Floating Style'),
                  ),
                ],
          ),
        ],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: _buildNavigationBar(),
      extendBody: _selectedStyle == NavigationBarStyle.floating,
    );
  }

  Widget _buildNavigationBar() {
    switch (_selectedStyle) {
      case NavigationBarStyle.custom:
        return CustomBottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: _navigationItems,
        );
      case NavigationBarStyle.modern:
        return ModernBottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: _navigationItems,
        );
      case NavigationBarStyle.floating:
        return FloatingBottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: _navigationItems,
        );
    }
  }
}

class DemoScreen extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const DemoScreen({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [color.withOpacity(0.1), Colors.white],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(icon, size: 80, color: color),
            ),
            const SizedBox(height: 24),
            Text(
              title,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'This is the $title screen',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
