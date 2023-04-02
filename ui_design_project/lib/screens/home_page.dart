import 'package:ui_design_project/screens/main_page.dart';
import 'package:ui_design_project/widgets/arc_text_widget.dart';
import 'package:ui_design_project/widgets/list_scroll_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff17181f),
        body: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 10,
                  child: Stack(children: [
                    Container(
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(120),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(2),
                        height: 200,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xff17181f), width: 10),
                          borderRadius: BorderRadius.circular(120),
                          image: const DecorationImage(
                            image: AssetImage(
                              "images/homeimg.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                        top: 100, left: 100, child: ArcTextWidget())
                  ]),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Choose a ",
                            style: TextStyle(color: Colors.white54),
                          ),
                          Text(
                            "celebrity ",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "look",
                            style: TextStyle(color: Colors.white54),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Center(
                        child: Text(
                          "to detect the makeup or snap",
                          style: TextStyle(color: Colors.white54),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "your ",
                            style: TextStyle(color: Colors.white54),
                          ),
                          Text(
                            "picture ",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "for applience",
                            style: TextStyle(color: Colors.white54),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    child: ListScrollWidget(),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Expanded(
                  flex: 2,
                  child: ActionChip(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                      backgroundColor: Colors.white,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MainPage(),
                        ));
                      },
                      label: const Text(
                        "Get Started",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
