part of '../../../clothing_store.dart';

class ClothingStorePage extends StatefulWidget {
  final int? selectedIndex;

  const ClothingStorePage({
    Key? key,
    this.selectedIndex,
  }) : super(key: key);

  @override
  _ClothingStorePageState createState() => _ClothingStorePageState();
}

class _ClothingStorePageState extends State<ClothingStorePage> {
  var selectedPage = 0;
  final tabbar = _TabbarRepository.getTabbarItems();

  @override
  void initState() {
    super.initState();
    selectedPage = widget.selectedIndex ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabbar[selectedPage].page,
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 32,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey[400],
        currentIndex: selectedPage,
        selectedFontSize: 0,
        onTap: (index) {
          selectedPage = index;
          setState(() {});
        },
        items: List.generate(tabbar.length, (index) {
          return tabbar[index].item;
        }),
      ),
    );
  }
}
