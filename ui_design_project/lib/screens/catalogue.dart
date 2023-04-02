import 'package:ui_design_project/Models/model1.dart';
import 'package:flutter/material.dart';

class CatalougePage extends StatefulWidget {
  final imglist = Model1.getImg();

  @override
  State<CatalougePage> createState() => _CatalougePageState();
}

class _CatalougePageState extends State<CatalougePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        height: 50,
                        width: 50,
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [BoxShadow(color: Colors.black)],
                        ),
                        child: const Icon(
                          Icons.chevron_left,
                        ),
                      ),
                    ),
                    const Text(
                      "Catalouge",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [BoxShadow(color: Colors.black)],
                      ),
                      child: const Icon(Icons.center_focus_strong),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Detect and",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Buy Makeup",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                      ),
                      child: const Icon(
                        Icons.swap_horiz,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: GridView.count(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 2,
                    children: List.generate(widget.imglist.length, (index) {
                      Model1 model = widget.imglist[index];
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5, bottom: 8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.height * 0.2,
                            height: MediaQuery.of(context).size.height * 0.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage(model.imgurl!),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                      );
                    }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
