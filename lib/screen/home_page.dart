import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_test101/widgets/search_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: [AppBar(), _tabs()],
        ),
      ),
    );
  }

  Widget _tabs() {
    return Container(
      decoration: BoxDecoration(),
      child: TabBar(
        isScrollable: true,
        controller: _tabController,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.black38,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
        tabAlignment: TabAlignment.center,
        indicatorColor: Colors.black,
        indicatorPadding: EdgeInsets.only(top: BorderSide.strokeAlignCenter),
        textScaler: TextScaler.linear(1),
        labelStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        tabs: [
          Text(
            'All',
          ),
          Text(
            'Device1',
          ),
          Text(
            'Device2',
          ),
          Text(
            'Device3',
          ),
        ],
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.cyan],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello World,\nWelcome to Home",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/test101.jpg"),
                  maxRadius: 40,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SearchTextField(),
        ],
      ),
    );
  }
}
