import 'package:butterfly/Common/SideMenu.dart';
import 'package:butterfly/Extensions/ColorExtension.dart';
import 'package:butterfly/Extensions/CustomIcons/CustomIcons.dart';
import 'package:butterfly/Insights/InsightsDetails.dart';
import 'package:flutter/material.dart';

class Insights extends StatefulWidget {
  const Insights({Key? key}) : super(key: key);

  @override
  State<Insights> createState() => _InsightsState();
}

class _InsightsState extends State<Insights> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: HexColor("#F5F4F6"),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Insights",
          style: TextStyle(
            color: HexColor("#3A3A3A"),
            fontFamily: AppTheme.primaryFontFamily,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            _key.currentState!.openDrawer();
          },
          icon: Image.asset(CustomIcons.menuIcon),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              CustomIcons.notificationIcon,
              height: 22,
              width: 22,
            ),
          )
        ],
      ),
      drawer: const Drawer(child: SideMenu()),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: HexColor("#C9C9C9").withOpacity(0.4),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: HexColor("#C9C9C9"),
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Tip",
                            style: TextStyle(
                              color: HexColor("#3A3A3A"),
                              fontFamily: AppTheme.primaryFontFamily,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const Spacer(),
                        CloseButton(
                          color: HexColor("#666666"),
                          onPressed: () {},
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 20, top: 0),
                      child: Text(
                        "Keep a perfect overview of your clients' progress and and therapy. Drill down into the data to get the exact knowledge you need or use it in reports.",
                        style: TextStyle(
                          color: HexColor("#000000").withOpacity(0.8),
                          fontFamily: AppTheme.primaryFontFamily,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const InsightsDetails(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: HexColor("#C9C9C9"), width: 1),
                  ),
                  child: Row(
                    children: [
                      Image.asset(CustomIcons.insightsSelectedIcon, height: 30),
                      const SizedBox(width: 15),
                      const Text(
                        "New Mastered Targets",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: AppTheme.primaryFontFamily,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
