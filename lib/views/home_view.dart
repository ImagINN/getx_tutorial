// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/views/graph_view.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:getx_tutorial/views/history_view.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("counter")),
      body: GraphView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add_rounded,
          color: Colors.white,
          size: 32,
        ),
        backgroundColor: Colors.green.shade600,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        onPressed: null,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          Icons.pie_chart_rounded,
          Icons.history_rounded,
        ],
        iconSize: 32,
        activeIndex: 0,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        backgroundColor: Colors.green.shade600,
        activeColor: Colors.green.shade900,
        inactiveColor: Colors.white,
        leftCornerRadius: 16,
        rightCornerRadius: 16,
        onTap: (index) {
          if (index == 0) {
            Get.to(GraphView());
          } else if (index == 1) {
            Get.to(HistoryView());
          }
        },
      ),
    );
  }
}
