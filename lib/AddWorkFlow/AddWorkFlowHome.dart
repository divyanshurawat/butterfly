import 'package:butterfly/AddWorkFlow/AddWorkFlow.dart';
import 'package:butterfly/Common/SideMenu.dart';
import 'package:butterfly/Extensions/ColorExtension.dart';
import 'package:butterfly/Extensions/CustomIcons/CustomIcons.dart';
import 'package:flutter/material.dart';

class AddWorkFlowHome extends StatefulWidget {
  const AddWorkFlowHome({Key? key}) : super(key: key);

  @override
  State<AddWorkFlowHome> createState() => _AddWorkFlowHomeState();
}

class _AddWorkFlowHomeState extends State<AddWorkFlowHome> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: HexColor("#E5E5E5"),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Add Workflow ",
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, left: 12),
            height: 50,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const AddWorkFlow()),
                );
              },
              child: Image.asset(CustomIcons.addWorkflowIcon),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: HexColor("#E7E7E7"),
                width: 2,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 0, 6),
                  child: Text(
                    "Workflows",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: AppTheme.primaryFontFamily,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Divider(thickness: 1, color: HexColor("#E7E7E7")),
                const SizedBox(height: 5),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (ctx, index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 0),
                        height: 70,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                const Expanded(
                                  child: Text(
                                    "80%",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: AppTheme.primaryFontFamily,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                PopupMenuButton(
                                  padding: const EdgeInsets.all(4),
                                  onSelected: (value) {},
                                  itemBuilder: (context) => [
                                    PopupMenuItem(
                                      value: 1,
                                      child: Row(
                                        children: const <Widget>[
                                          Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Icon(Icons.delete),
                                          ),
                                          Text("Delete")
                                        ],
                                      ),
                                    ),
                                    PopupMenuItem(
                                      value: 2,
                                      child: Row(
                                        children: const <Widget>[
                                          Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Icon(Icons.edit),
                                          ),
                                          Text("Edit")
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Divider(thickness: 1, color: HexColor("#E7E7E7")),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Drawer drawer() {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            leading: const Icon(
              Icons.home,
            ),
            title: const Text('Page 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.train,
            ),
            title: const Text('Page 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
