import 'package:butterfly/AddPrompt/AddPromptLevel.dart';
import 'package:butterfly/Extensions/ColorExtension.dart';
import 'package:butterfly/Extensions/CustomIcons/CustomIcons.dart';
import 'package:flutter/material.dart';

class AddPrompt extends StatefulWidget {
  const AddPrompt({Key? key}) : super(key: key);

  @override
  State<AddPrompt> createState() => _AddPromptState();
}

class _AddPromptState extends State<AddPrompt> {
  @override
  Widget build(BuildContext context) {
    PopupMenuItem _buildPopupMenuItem(
        String title, IconData iconData, int position) {
      return PopupMenuItem(
        value: position,
        child: Row(
          children: [
            Icon(
              iconData,
              color: Colors.black,
            ),
            Text(title),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: HexColor("#E5E5E5"),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Add Prompt level",
          style: TextStyle(
            color: HexColor("#3A3A3A"),
            fontFamily: AppTheme.primaryFontFamily,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, left: 12),
            height: 50,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const AddPromptLevel()),
                );
              },
              child: Image.asset(CustomIcons.addPromptIcon),
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
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: HexColor("#242424").withOpacity(0.14),
                  blurRadius: 4.0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 0, 6),
                  child: Text(
                    "Prompt level",
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
                    itemCount: 5,
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
                                const Text(
                                  "Child Response",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: AppTheme.primaryFontFamily,
                                      fontWeight: FontWeight.w400),
                                ),
                                const Spacer(),
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
}
