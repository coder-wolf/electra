import 'package:flutter/material.dart';
import 'package:labcse25/constants/size.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffF3F3F7),
        child: Row(
          children: [
            // TODO make the webpage responsive for different screen sizes
            Container(
              color: Colors.white,
              height: double.infinity,
              width: 222 * w,
              child: Padding(
                padding: EdgeInsets.all(w * 35),
                child: SingleChildScrollView(
                  child: SideBarItems(),
                ),
              ),
            ),
            // ======== MAIN ITEMS, right side of screen ========
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(),
                    Container(
                      color: Color(0xffF3F3F7),
                      // height: double.infinity,
                      width: w * 778,
                      child: Column(
                        children: [ 
                          // Container(
                          //   // color: Colors.red,
                          //   height: 200 * w,
                          //   child: Padding(
                          //     padding: EdgeInsets.only(
                          //       top: 25 * w,
                          //     ),
                          //     child: Column(
                          //       children: [
                          //         SearchBarAndStuff(),
                          //         Padding(
                          //           padding: EdgeInsets.only(
                          //             top: 24 * w,
                          //           ),
                          //           child: Container(
                          //             child: SingleChildScrollView(
                          //               scrollDirection: Axis.horizontal,
                          //               child: Row(
                          //                 children: [
                          //                   SizedBox(
                          //                     width: 22 * w,
                          //                   ),
                          //                   LargerWidget(),
                          //                   SizedBox(
                          //                     width: 19 * w,
                          //                   ),
                          //                   // DOC : Water and Gas info here
                          //                   Column(
                          //                     children: [
                          //                       SmallerWidgets(),
                          //                       SizedBox(
                          //                         height: 15 * w,
                          //                       ),
                          //                       SmallerWidgets(
                          //                         icon: "🔥",
                          //                         category: "Gas:",
                          //                       ),
                          //                     ],
                          //                   ),
                          //                   SizedBox(
                          //                     width: 19 * w,
                          //                   ),
                          //                   // DOC: Home and water info here
                          //                   Column(
                          //                     children: [
                          //                       SmallerWidgets(
                          //                         icon: "🏠",
                          //                         category: "Home:",
                          //                       ),
                          //                       SizedBox(
                          //                         height: 15 * w,
                          //                       ),
                          //                       SmallerWidgets(
                          //                         icon: "🗑",
                          //                         category: "Cleaning:",
                          //                       ),
                          //                     ],
                          //                   ),
                          //                   SizedBox(
                          //                     width: 18 * w,
                          //                   ),
                          //                   Container(
                          //                     height: 102 * w,
                          //                     width: 102 * w,
                          //                     decoration: BoxDecoration(
                          //                       color: Colors.white,
                          //                       borderRadius:
                          //                           BorderRadius.circular(
                          //                               14 * w),
                          //                       boxShadow: [
                          //                         BoxShadow(
                          //                           color: Colors.grey
                          //                               .withOpacity(0.1),
                          //                           spreadRadius: 5 * w,
                          //                           blurRadius: 5 * w,
                          //                         ),
                          //                       ],
                          //                     ),
                          //                     child: Center(
                          //                         child: Padding(
                          //                       padding: EdgeInsets.all(w * 6),
                          //                       child: Image(
                          //                         image: AssetImage(
                          //                             "images/qr.png"),
                          //                       ),
                          //                     )),
                          //                   ),
                          //                   SizedBox(
                          //                     width: 22 * w,
                          //                   ),
                          //                 ],
                          //               ),
                          //             ),
                          //           ),
                          //         ),
                          //         // Spacer(),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 22 * w,
                                  right: 22 * w,
                                  top: 25 * w,
                                  bottom: 22 * w,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20 * w),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(20 * w),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 5 * w,
                                          blurRadius: 5 * w,
                                        ),
                                      ],
                                    ),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          TitleBar(),
                                          BillWidget(
                                            index: 0,
                                          ),
                                          BillWidget(
                                            index: 1,
                                          ),
                                          BillWidget(
                                            index: 2,
                                          ),
                                          BillWidget(
                                            index: 3,
                                          ),
                                          BillWidget(
                                            index: 4,
                                          ),
                                          BillWidget(
                                            index: 5,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SideBarItems extends StatelessWidget {
  const SideBarItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Electra",
          style: TextStyle(
            fontSize: w * 30,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          "Admin Panel",
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
        SizedBox(height: 53 * w),
        SideBarItem(
          icon: Icons.auto_awesome_mosaic_outlined,
          title: "Overview",
          isSelected: true,
        ),
        SideBarItem(
          icon: Icons.article_outlined,
          title: "Report",
        ),
        SideBarItem(
          icon: Icons.calendar_today_outlined,
          title: "Calendar",
        ),
        SideBarItem(
          icon: Icons.folder_outlined,
          title: "Directory",
        ),
        SideBarItem(
          icon: Icons.auto_awesome_mosaic_outlined,
          title: "Overview",
        ),
        SideBarItem(
          icon: Icons.settings,
          title: "Settings",
        ),
      ],
    );
  }
}

class SideBarItem extends StatelessWidget {
  SideBarItem({
    this.icon,
    this.title,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);
  var icon;
  var title;
  var isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12 * w, bottom: 12 * w),
      child: Row(children: [
        Icon(
          icon,
          color: isSelected ? Color(0xff4B58DB) : Colors.grey,
        ),
        SizedBox(
          width: 10 * w,
        ),
        Text(
          title,
          style: TextStyle(
            color: isSelected ? Color(0xff4B58DB) : Colors.grey,
            fontSize: 18 * w,
          ),
        ),
      ]),
    );
  }
}

class LargerWidget extends StatelessWidget {
  const LargerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103 * w,
      width: 246 * w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15 * w),
        border: Border.all(color: Color(0xff4C57DA)),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(
              top: 12 * w, bottom: 12 * w, left: 12 * w, right: 12 * w),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  children: [
                    Text("⚡️"),
                    Spacer(),
                    Text(
                      "Electricity",
                      style: TextStyle(
                        // fontSize: 16 * w,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Price:"),
                    Text(
                      "170\$",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 15 * w,
                      ),
                    ),
                    Container(
                      width: 21 * w,
                      height: 1 * w,
                      color: Colors.grey,
                    ),
                    Text("Usage:"),
                    Text(
                      "121 Kwh",
                      style: TextStyle(
                        color: Colors.yellow[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 15 * w,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      "Electricity provider:",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 13 * w,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "High Electric",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 13 * w,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SmallerWidgets extends StatelessWidget {
  SmallerWidgets({
    Key? key,
    this.bill,
    this.category,
    this.icon,
  }) : super(key: key);
  var icon;
  var category;
  var bill;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44 * w,
      width: 164 * w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14 * w),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 10 * w, right: 10 * w),
          child: Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 6 * w),
                  child: Text(icon ?? "💧"),
                ),
                SizedBox(
                  width: 10 * w,
                ),
                Text(
                  category ?? "Water:",
                  style: TextStyle(
                    fontSize: 14 * w,
                    color: Colors.grey[500],
                  ),
                ),
                Text(
                  bill ?? " 170\$",
                  style: TextStyle(
                    fontSize: 14 * w,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 6 * w,
                    top: 5 * w,
                    right: 3 * w,
                  ),
                  child: Text(
                    "🟢",
                    style: TextStyle(
                      fontSize: 6 * w,
                    ),
                  ), // grey --> ⚪️
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SearchBarAndStuff extends StatelessWidget {
  SearchBarAndStuff({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 22 * w,
        ),
        Container(
          width: 428 * w,
          height: 32 * w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(9 * w),
          ),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12 * w),
                  child: Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11 * w,
                    ),
                  ),
                  // child: TextField(
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(),
                  //     hintText: 'Enter a search term',
                  //   ),
                  // ),
                ),
                // Spacer(),
              ],
            ),
          ),
        ),
        Spacer(),
        Text(
          "Message",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13.5 * w,
          ),
        ),
        SizedBox(
          width: 18 * w,
        ),
        Text(
          "Notification",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13.5 * w,
          ),
        ),
        SizedBox(
          width: 18 * w,
        ),
        CircleAvatar(
          radius: 20 * w,
        ),
        SizedBox(
          width: 22 * w,
        ),
      ],
    );
  }
}

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(
          left: 25 * w,
          right: 25 * w,
          top: 20 * w,
          bottom: 20 * w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: Text(
                "User ID",
                style: TextStyle(
                  fontSize: 14 * w,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                "User Name",
                style: TextStyle(
                  fontSize: 14 * w,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                "Meter ID",
                style: TextStyle(
                  fontSize: 14 * w,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                "This month",
                style: TextStyle(
                  fontSize: 14 * w,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                "Charge",
                style: TextStyle(
                  fontSize: 14 * w,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                "Payment",
                style: TextStyle(
                  fontSize: 14 * w,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BillWidget extends StatelessWidget {
  BillWidget({
    Key? key,
    this.index,
  }) : super(key: key);

  var index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: index % 2 == 0 ? Color(0xffF5F9FC) : Colors.white,
      child: Padding(
        padding: EdgeInsets.only(
          left: 25 * w,
          right: 25 * w,
          top: 14 * w,
          bottom: 14 * w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: Text(
                "122351",
                style: TextStyle(
                  fontSize: 14 * w,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                "John Fury",
                style: TextStyle(
                  fontSize: 14 * w,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                "122355112",
                style: TextStyle(
                  fontSize: 14 * w,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                "120 Unit",
                style: TextStyle(
                  fontSize: 14 * w,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                "300\$",
                style: TextStyle(
                  fontSize: 14 * w,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                "Complete", // 7 char
                style: TextStyle(
                  fontSize: 14 * w,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
