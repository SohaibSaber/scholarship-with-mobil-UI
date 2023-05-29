import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:simple_scholarship_app/pages/details_page.dart';

import '../model/scholarships_data.dart';

class MyCard extends StatelessWidget {
final ScholarshipsData scholarshipsData;
  const MyCard(
      {Key? key, required this.scholarshipsData, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.black.withAlpha(30),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
        border: Border.all(
          color: Color(0xff520d1c),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),

          margin: const EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
             "${scholarshipsData.image}",
              height: 38,
              width: 38,
              fit: BoxFit.cover,
      ),
          ),
        ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Scholarship",
                style: TextStyle(color: Color(0xffc79a9a), fontSize: 14)),
            Text(
              " ${scholarshipsData.title}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.date_range, color: Color(0xffc79a9a), size: 16),
                SizedBox(width: 4,),
                Text(" ${scholarshipsData.publishedDate}",
                    style: TextStyle(fontSize: 12, color: Colors.black)),


                  ],
                ),
            SizedBox(height: 4,),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                    Icons.timelapse, color: Color(0xffc79a9a), size: 16),
                SizedBox(width: 4,),
                Text(" ${scholarshipsData.deadlineDate}",
                    style: TextStyle(fontSize: 12, color: Colors.black,)
                )],
            )

              ],
            ),
      )
        ],
      ),
    ).onTap((){
      Get.to(DetailsPage(scholarshipsData: scholarshipsData,));
    });
  }
}
