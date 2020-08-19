import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePageScreen extends StatefulWidget {
  @override
  _ProfilePageScreenState createState() => _ProfilePageScreenState();
}

class _ProfilePageScreenState extends State<ProfilePageScreen> {
//  CustomTabController tabCOntroller = new CustomTab

  List<String> bookmrkList = [
    "assets/bookmark/bookmrk_one.png",
    "assets/bookmark/bookmrk_two.png",
    "assets/bookmark/bookmrk_three.png",
    "assets/bookmark/bookmrk_four.png",
  ];

  List<String> favList = [
    "assets/fav/fav_one.png",
    "assets/fav/fav_two.png",
    "assets/fav/fav_three.png",
    "assets/fav/fav_four.png",
    "assets/fav/fav_five.png",
    "assets/fav/fav_six.png",
  ];

  List<String> postList = [
    "assets/post/layer_one.png",
    "assets/post/layer_two.png",
    "assets/post/layer_three.png",
    "assets/post/layer_four.png",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(""),
          backgroundColor: Colors.black,
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: ExactAssetImage("assets/user_img.jpg"),
                      ),
                    ),
                    ListTile(
                      title: Center(
                        child: Text(
                          "Samantha Smith",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                      ),
                      subtitle: Center(
                        child: Text(
                          "@imsamanthasmith",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 15.0,
                              color: Colors.white70),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: ListTile(
                              title: Center(
                                child: Text(
                                  "1.2m",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                      color: Colors.white),
                                ),
                              ),
                              subtitle: Center(
                                child: Text(
                                  "Liked",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10.0,
                                      color: Colors.white70),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: Center(
                                child: Text(
                                  "12.8k",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                      color: Colors.white),
                                ),
                              ),
                              subtitle: Center(
                                child: Text(
                                  "followers",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10.0,
                                      color: Colors.white70),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: Center(
                                child: Text(
                                  "1.9k",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                      color: Colors.white),
                                ),
                              ),
                              subtitle: Center(
                                child: Text(
                                  "Following",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10.0,
                                      color: Colors.white70),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: TabBar(
                tabs: [
                  Tab(
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.grid_on,
                        color: Colors.white70,
                        size: 25.0,
                      ),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite_border,
                        size: 30.0,
                      ),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.bookmark_border,
                        size: 30.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  GridView.count(
                    physics: ScrollPhysics(
                        parent: BouncingScrollPhysics(
                            parent: AlwaysScrollableScrollPhysics())),
                    crossAxisCount: 3,
                    children: List.generate(postList.length, (index) {
                      return Container(
                        child: Card(
                          child: Image.asset(
                            postList[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    }),
                  ),
                  GridView.count(
                    physics: ScrollPhysics(
                        parent: BouncingScrollPhysics(
                            parent: AlwaysScrollableScrollPhysics())),
                    crossAxisCount: 3,
                    children: List.generate(favList.length, (index) {
                      return Container(
                        child: Card(
                          child: Image.asset(
                            favList[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    }),
                  ),
                  GridView.count(
                    physics: ScrollPhysics(
                        parent: BouncingScrollPhysics(
                            parent: AlwaysScrollableScrollPhysics())),
                    crossAxisCount: 3,
                    children: List.generate(bookmrkList.length, (index) {
                      return Container(
                        child: Card(
                          child: Image.asset(
                            bookmrkList[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    }),
                  ),
//                  ListView(
//                    children: <Widget>[
//                      ListTile(title: Text('Sunday 1')),
//                      ListTile(title: Text('Monday 2')),
//                      ListTile(title: Text('Tuesday 3')),
//                      ListTile(title: Text('Wednesday 4')),
//                      ListTile(title: Text('Thursday 5')),
//                      ListTile(title: Text('Friday 6')),
//                      ListTile(title: Text('Saturday 7')),
//                      ListTile(title: Text('Sunday 8')),
//                      ListTile(title: Text('Monday 9')),
//                      ListTile(title: Text('Tuesday 10')),
//                      ListTile(title: Text('Wednesday 11')),
//                      ListTile(title: Text('Thursday 12')),
//                      ListTile(title: Text('Friday 13')),
//                      ListTile(title: Text('Saturday 14')),
//                    ],
//                  ),
//                  ListView(
//                    children: <Widget>[
//                      ListTile(title: Text('January')),
//                      ListTile(title: Text('February')),
//                      ListTile(title: Text('March')),
//                      ListTile(title: Text('April')),
//                      ListTile(title: Text('May')),
//                      ListTile(title: Text('June')),
//                      ListTile(title: Text('July')),
//                      ListTile(title: Text('August')),
//                      ListTile(title: Text('September')),
//                      ListTile(title: Text('October')),
//                      ListTile(title: Text('November')),
//                      ListTile(title: Text('December')),
//                    ],
//                  ),
//                  ListView(
//                    children: <Widget>[
//                      ListTile(title: Text('January')),
//                      ListTile(title: Text('February')),
//                      ListTile(title: Text('March')),
//                      ListTile(title: Text('April')),
//                      ListTile(title: Text('May')),
//                      ListTile(title: Text('June')),
//                      ListTile(title: Text('July')),
//                      ListTile(title: Text('August')),
//                      ListTile(title: Text('September')),
//                      ListTile(title: Text('October')),
//                      ListTile(title: Text('November')),
//                      ListTile(title: Text('December')),
//                    ],
//                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
