import 'package:butterfly/AddPrompt/AddPrompt.dart';
import 'package:butterfly/Extensions/CustomIcons/CustomIcons.dart';
import 'package:flutter/material.dart';

import '../Extensions/ColorExtension.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  var namesArr = ["Manasi Deshmukh", "Jack Smith", "Jax"];
  var currentSelectedValue = "Manasi Deshmukh";
  var dropdownValue = "One";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                      color: HexColor("#00B9E3"),
                      borderRadius: BorderRadius.circular(24)),
                  child: Row(
                    children: [
                      Image.asset(
                        CustomIcons.arrowDownIcon1,
                        height: 24,
                      ),
                      // const SizedBox(width: 6),
                      ButtonTheme(
                        alignedDropdown: true,
                        minWidth: 50,
                        child: DropdownButton<String>(
                          value: currentSelectedValue,
                          isDense: false,
                          elevation: 16,
                          iconSize: 0,
                          alignment: Alignment.center,
                          // style: const TextStyle(color: Colors.deepPurple),
                          underline: Container(),
                          onChanged: (String? newValue) {
                            setState(() {
                              currentSelectedValue = newValue!;
                            });
                          },
                          items: namesArr
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: AppTheme.primaryFontFamily,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Divider(thickness: 1, color: HexColor("#E7E7E7")),
          sideMenuRow(CustomIcons.homeIcon, "Home", () {}),
          sideMenuRow(CustomIcons.programsIcon, "Programs", () {}),
          sideMenuRow(CustomIcons.clockIcon, "Recent Activity", () {}),
          sideMenuRow(CustomIcons.filesIcon, "Files", () {}),
          sideMenuRow(CustomIcons.groupIcon, "Progress", () {}),
          sideMenuRow(CustomIcons.resourceIcon, "Resources", () {}),
          sideMenuRow(CustomIcons.libraryIcon, "Library", () {}),
          sideMenuRow(CustomIcons.insightsIcon, "Insight", () {}),
          sideMenuRow(CustomIcons.settingsIcon, "Settings", () {}),
        ],
      ),
    );
  }

  Container sideMenuRow(String icon, String title, Function onTapped) {
    return Container(
      child: ListTile(
        leading: Image.asset(
          icon,
          height: 28,
          width: 28,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: HexColor("#666666"),
            fontFamily: AppTheme.primaryFontFamily,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        onTap: onTapped(),
      ),
    );
  }

  FormField<String> dropDown() {
    return FormField<String>(
      builder: (FormFieldState<String> state) {
        return DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: currentSelectedValue,
            focusColor: Colors.transparent,
            elevation: 0,
            icon: Container(),
            isExpanded: true,
            isDense: true,
            onChanged: (newValue) {
              setState(() {
                currentSelectedValue = newValue ?? "";
                state.didChange(newValue);
              });
            },
            items: namesArr.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
