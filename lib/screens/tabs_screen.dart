import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/categories_screen.dart';
import 'package:flutter_complete_guide/screens/favorites_screen.dart';

// NOTE BottomNavigationBar, updated version using DefaultTabController

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Meals"),
        ),
        body: TabBarView(
          children: <Widget>[
            CategoriesScreen(),
            FavoritesScreen(),
          ],
        ),
        bottomNavigationBar: Container(
          color: Theme.of(context).primaryColor,
          child: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favorites',
              ),
            ],
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
          ),
        ),
      ),
    );
  }
}

// NOTE BottomNavigationBar, seen in lecture, Stateful

// class _TabsScreenState extends State<TabsScreen> {
//   final List<Map<String, Object>> _pages = [
//     {
//       'page': CategoriesScreen(),
//       'title': 'Categories',
//     },
//     {
//       'page': FavoritesScreen(),
//       'title': 'Your Favorite',
//     },
//   ];
//   int _selectedPageIndex = 0;
//
//   void _selectPage(int index) {
//     setState(() {
//       _selectedPageIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(_pages[_selectedPageIndex]['title']),
//       ),
//       body: _pages[_selectedPageIndex]['page'],
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: _selectPage,
//         backgroundColor: Theme.of(context).primaryColor,
//         unselectedItemColor: Colors.white,
//         selectedItemColor: Theme.of(context).accentColor,
//         currentIndex: _selectedPageIndex,
//         // type: BottomNavigationBarType.fixed,
//         items: [
//           BottomNavigationBarItem(
//             backgroundColor: Theme.of(context).primaryColor,
//             icon: Icon(Icons.category),
//             title: Text('Categories'),
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Theme.of(context).primaryColor,
//             icon: Icon(Icons.star),
//             title: Text('Favorites'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// NOTE TopNavigationBar, first one seen in lecture, Stateful

// class _TabsScreenState extends State<TabsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Meals'),
//           bottom: TabBar(
//             tabs: [
//               Tab(icon: Icon(Icons.category), text: 'Categories',),
//               Tab(icon: Icon(Icons.star), text: 'Favorites',),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             CategoriesScreen(),
//             FavoritesScreen()
//           ],
//         ),
//       ),
//     );
//   }
// }
