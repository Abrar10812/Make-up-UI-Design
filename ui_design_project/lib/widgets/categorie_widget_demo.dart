import 'package:ui_design_project/Models/model1.dart';
import 'package:flutter/material.dart';

class CatagorieWidgetDemo extends StatelessWidget {
  CatagorieWidgetDemo({Key? key}) : super(key: key);
  final imglist = Model1.getCatagorie();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.18,
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.09,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      "${imglist[index].imgurl}",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "${imglist[index].catName}",
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 8),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (_, index) {
          return const SizedBox(
            width: 30,
          );
        },
        itemCount: imglist.length);
  }
}