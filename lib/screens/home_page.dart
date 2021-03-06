import 'package:ecommerceapp/widgets/bottom_tabs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //FirebaseServices _firebaseServices = FirebaseServices();

  PageController _tabsPageController = PageController();
  int _selectedTab = 0;

  @override
  void initState() {
    _tabsPageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _tabsPageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child:
          PageView(
            controller: _tabsPageController,
            onPageChanged: (val){
              setState(() {
                _selectedTab = val;
              });
            },
            children: [
              Container(
                child: Center(
                  child: Text("Home Page"),
                ),
              ),
              Container(
                child: Center(
                  child: Text("Search Page"),
                ),
              ),
              Container(
                child: Center(
                  child: Text("Saved Page"),
                ),
              ),
            ],
          )
          ),
          ButtomTabs(selectedTab: _selectedTab, tabPressed: (num){
            _tabsPageController.animateToPage(
                num,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeOutCubic);
          },
          ),
        ],
      )

    );
  }
}
