import 'package:butterfly/Extensions/ColorExtension.dart';
import 'package:butterfly/Extensions/CustomIcons/CustomIcons.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#E5E5E5"),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Program", style: TextStyle(color: HexColor("#3A3A3A"))),
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(CustomIcons.menuIcon),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              CustomIcons.notificationIcon,
              height: 24,
              width: 24,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, left: 12),
            height: 50,
            child: TextButton(
              onPressed: () {},
              child: Image.asset(CustomIcons.addProgramIcon),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.green, //HexColor("#E7E7E7"),
                width: 1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset(CustomIcons.addFilterIcon, height: 30),
                  ),
                ),
                Divider(thickness: 1, color: HexColor("#E7E7E7")),
                Row(
                  children: [
                    Expanded(child: Image.asset(CustomIcons.checkBoxIcon)),
                    const Expanded(child: Text("Program")),
                    const Expanded(child: Text("Tags")),
                    const Expanded(child: Text("Status")),
                  ],
                ),
                Divider(thickness: 1, color: HexColor("#E7E7E7")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
