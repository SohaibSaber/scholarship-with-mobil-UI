import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:simple_scholarship_app/widgets/details_tile.dart';
import 'package:simple_scholarship_app/model/scholarships_data.dart';
import 'package:flutter_html/flutter_html.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key, required this.scholarshipsData})
      : super(key: key);
  final ScholarshipsData scholarshipsData;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: NestedScrollView(
        floatHeaderSlivers: true,
        physics: const NeverScrollableScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.grey[300],
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.grey),
                onPressed: () {
                  finish(context);
                },
              ).visible(innerBoxIsScrolled),
              title: Text(("${widget.scholarshipsData.title}"),
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
                  .visible(innerBoxIsScrolled),
              actions: [
                IconButton(
                  icon: const Icon(Icons.subdirectory_arrow_right,
                      color: Color(0xffc79a9a)),
                  onPressed: () {},
                ).visible(innerBoxIsScrolled),
                IconButton(
                  icon: const Icon(Icons.favorite, color: Color(0xffc79a9a)),
                  onPressed: () {},
                ).visible(innerBoxIsScrolled),
              ],
              leadingWidth: 30,
              pinned: true,
              elevation: 0.5,
              expandedHeight: 450,
              flexibleSpace: FlexibleSpaceBar(
                  titlePadding:
                  const EdgeInsets.only(bottom: 66, left: 30, right: 50),
                  collapseMode: CollapseMode.parallax,
                  background: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            ('${widget.scholarshipsData.image}'),
                            height: 300,
                            width: context.width(),
                            fit: BoxFit.cover,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: radius(100),
                                  color: context.cardColor,
                                ),
                                padding: const EdgeInsets.all(8),
                                margin:
                                const EdgeInsets.only(left: 16, top: 30),
                                child: const Icon(Icons.arrow_back,
                                    color: Color(0xffc79a9a)),
                              ).onTap(() {
                                finish(context);
                              }, borderRadius: radius(100)),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: radius(100),
                                      color: context.cardColor,
                                    ),
                                    padding: const EdgeInsets.all(8),
                                    margin: const EdgeInsets.only(
                                        right: 16, top: 30),
                                    child: const Icon(
                                        Icons.subdirectory_arrow_right,
                                        color: Color(0xffc79a9a)),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: radius(100),
                                      color: context.cardColor,
                                    ),
                                    padding: const EdgeInsets.all(8),
                                    margin: const EdgeInsets.only(
                                        right: 16, top: 30),
                                    child: const Icon(Icons.favorite,
                                        color: Color(0xffc79a9a)),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        color: Colors.grey[300],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(("${widget.scholarshipsData.title}"), maxLines: 4),
                            8.height,
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.date_range,
                                    color: Color(0xffc79a9a), size: 16),
                                4.width,
                                Text("${widget.scholarshipsData.publishedDate}",
                                    style: secondaryTextStyle(
                                        size: 12, color: Colors.black))
                              ],
                            ),
                            8.height,
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.timelapse,
                                    color: Color(0xffc79a9a), size: 16),
                                4.width,
                                Text("${widget.scholarshipsData.deadlineDate}",
                                    style:
                                    secondaryTextStyle(color: Colors.grey)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            )
          ];
        },
        body: Container(
          decoration: BoxDecoration(
            color: Color(0xfffff7f7),
            borderRadius: radiusOnly(topLeft: 32, topRight: 32),
          ),
          child: SingleChildScrollView(
            child:
            Container(padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Color(0xff520d1c).withAlpha(30),
                          borderRadius: radius(16),
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
                          )
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            child: Image.asset('assets/food_ic_intro.jpg',height: 50, width: 50, fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          16.width,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text( "Kabul Polytechnic university what about two line",
                                    maxLines: 3,
                                    style: TextStyle(
                                      fontSize: 18, )),
                                8.height,
                                // Row(
                                //   mainAxisSize: MainAxisSize.min,
                                //   children: [
                                //     const Icon(Icons.date_range, color: bmPrimaryColor, size: 16),
                                //     4.width,
                                //     Text("Organization Name", style: secondaryTextStyle(size: 12, color: bmSpecialColorDark))
                                //   ],
                                // ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    DetailsTile(title: "Language Requirement",subtitle: "Not Required",),
                    DetailsTile(title: "Gender",subtitle: "Female",),
                    DetailsTile(title: "Level",subtitle: "Non-Degree /Short program",),
                    DetailsTile(title: "Eligible Region/Countries",subtitle: "All",),
                    DetailsTile(title: "Medium of Instruction",subtitle: "English",),
                    DetailsTile(title: "Field of study",subtitle: "Global Health",),
                    DetailsTile(title: "Opportunity ID",subtitle: "35069",),
                    DetailsTile(title: "Funding Type",subtitle: "Fully Funded",),
                    Html(data:widget.scholarshipsData.longDescription,),
                  ],
                )
            ),
          ),
        ),
      ),
    );
  }
}
