part of '../../clothing_store.dart';

final _tabbarItems = <_TabbarModel>[
  _TabbarModel(
    item: const BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
    page: const CategoriesPage(),
  ),
  _TabbarModel(
    item: const BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
    page: _CartPage(),
  ),
  _TabbarModel(
    item: const BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
    page: Navigator(
      onGenerateRoute: (routeSettings) {
        switch (routeSettings.name) {
          case _RouteName.aboutPage:
            return MaterialPageRoute(builder: (context) {
              return _AboutPage();
            });
          case _RouteName.profilePage:
            return MaterialPageRoute(builder: (context) {
              return _ProfilePage();
            });
          case _RouteName.buyerCardPage:
            return MaterialPageRoute(builder: (context) {
              final buyerCards =
                  routeSettings.arguments as List<_BuyerCardModel>;
              return _BuyerCardPage(
                buyerCards: buyerCards,
              );
            });
          default:
            return MaterialPageRoute(builder: (context) {
              return _ProfilePage();
            });
        }
      },
    ),
  ),
];
