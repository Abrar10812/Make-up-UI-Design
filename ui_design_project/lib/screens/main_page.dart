import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ui_design_project/Models/model1.dart';
import 'package:ui_design_project/screens/catalogue.dart';
import 'package:ui_design_project/widgets/categorie_widget_demo.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);
  final imglist = Model1.getImg();

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late PageController _pageController;
  int _currentPage = 2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController =
        PageController(initialPage: _currentPage, viewportFraction: 0.5);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }
  int selectedIndex = 0;
  void updateTabSelection(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: CircleAvatar(
          backgroundColor: Colors.black,
          radius: 35,
          child: FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () {},
            elevation: 4.0,
            child: Container(
              margin: const EdgeInsets.all(15.0),
              child: const Center(
                  child: Icon(
                Icons.center_focus_strong,
                color: Colors.white,
              )),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Colors.white,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.08,
            margin: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    updateTabSelection(0);
                  },
                  iconSize: 27.0,
                  icon: Icon(
                    Icons.home_rounded,
                    color: selectedIndex == 0
                        ? Colors.teal.shade500
                        : Colors.grey.shade500,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    updateTabSelection(1);
                  },
                  iconSize: 27.0,
                  icon: Icon(
                    Icons.shopping_bag_rounded,
                    color: selectedIndex == 1
                        ? Colors.teal.shade500
                        : Colors.grey.shade500,
                  ),
                ),
                const SizedBox(
                  width: 50.0,
                ),
                IconButton(
                  onPressed: () {
                    updateTabSelection(2);
                  },
                  iconSize: 27.0,
                  icon: Icon(
                    Icons.settings,
                    color: selectedIndex == 2
                        ? Colors.teal.shade500
                        : Colors.grey.shade500,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    updateTabSelection(3);
                  },
                  iconSize: 27.0,
                  icon: Icon(
                    Icons.favorite_outline,
                    color: selectedIndex == 3
                        ? Colors.teal.shade500
                        : Colors.grey.shade500,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xff17181f),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                'images/propic.jpg',
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "Hello, Rima",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Text("👋")
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Let's choose a look",
                                  style: TextStyle(
                                      color: Color(0xff3c3f47),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: const Color(0xff2d2f35), width: 1)),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                const Icon(
                                  Icons.notifications_none_outlined,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Positioned(
                                  right: 13,
                                  top: 12,
                                  child: Container(
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffb6ed9d),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: const Color(0xff42434a),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.search,
                                  color: Color(0xffb7b8bc),
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Search products",
                                  style: TextStyle(
                                      color: Color(0xff7a7a83),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                )
                              ],
                            ),
                            const Icon(
                              Icons.menu,
                              color: Color(0xffb7b8bc),
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18),
              child: Row(
                children: [
                  const Text(
                    "Catalouge",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CatalougePage(),
                          ));
                        },
                        child: const Text(
                          "for more",
                          style: TextStyle(color: Colors.black54, fontSize: 12),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: Colors.black26,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
/*              child: CarouselSlider.builder(
                itemCount: widget.imglist.length,
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  height: 400,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  reverse: false,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.5,
                  initialPage: 1,
                ),
                itemBuilder: (context, index, id) {
                  return GestureDetector(
                    child: Transform.rotate(
                      angle: 0.0,
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        //ClipRRect for image border radius
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            widget.imglist[index].imgurl!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CatalougePage(),
                    ));},
                  );
                },
              ),*/
              child: PageView.builder(
                  itemCount: widget.imglist.length,
                  physics: const ClampingScrollPhysics(),
                   controller: _pageController,
                  itemBuilder: (context, index) {
                    return carouselView(index);
                  }),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18),
              child: Row(
                children: [
                  const Text(
                    "Product Catagories",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      Text(
                        "for more",
                        style: TextStyle(color: Colors.black54, fontSize: 12),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: Colors.black26,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 3,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                  child: CatagorieWidgetDemo(),
                )),
          ],
        ),
      ),
    );
  }
  Widget carouselView(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0.0;
        if (_pageController.position.haveDimensions) {
          value = index.toDouble() - (_pageController.page ?? 0);
          value = (value * 0.038).clamp(-1, 1);
          print("value $value index $index");
        }
        return Transform.rotate(
          angle: pi * value,
          child: carouselCard(widget.imglist[index]),
        );
      },
    );
  }
  Widget carouselCard(Model1 data) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Hero(
              tag: data.imgurl!,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CatalougePage(),
                  ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage(
                            data.imgurl!,
                          ),
                          fit: BoxFit.fill),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 4,
                            color: Colors.black26)
                      ]),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
