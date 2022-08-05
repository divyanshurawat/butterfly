import 'package:butterfly/Extensions/ColorExtension.dart';
import 'package:butterfly/Extensions/CustomIcons/CustomIcons.dart';
import 'package:flutter/material.dart';

class AddPromptLevel extends StatefulWidget {
  const AddPromptLevel({Key? key}) : super(key: key);

  @override
  State<AddPromptLevel> createState() => _AddPromptLevelState();
}

class _AddPromptLevelState extends State<AddPromptLevel> {
  var templateNameController = TextEditingController();
  bool isSwitched = false;
  var textValue = 'Switch is OFF';
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  final dropdownItems = ["Test", "Test1", "Test2"];

  var currentSelectedValue = "Test";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#E5E5E5"),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Add Prompt level Template",
          style: TextStyle(
            color: HexColor("#3A3A3A"),
            fontFamily: AppTheme.primaryFontFamily,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              CustomIcons.closeIcon,
              height: 22,
              width: 22,
            ),
          )
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: templateNameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Template name",
                  hintStyle: TextStyle(
                    color: HexColor("#868686"),
                    fontFamily: AppTheme.primaryFontFamily,
                    fontWeight: FontWeight.normal,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor("C9C9C9")),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor("C9C9C9")),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor("C9C9C9")),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              dropDown(),
              const SizedBox(height: 15),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 1,
                itemBuilder: (ctx, index) {
                  return Container(
                    padding: const EdgeInsets.all(8),
                    margin:
                        const EdgeInsets.only(left: 0, right: 20, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: HexColor("#E7E7E7"), width: 1),
                      boxShadow: [
                        BoxShadow(
                          color: HexColor("#242424").withOpacity(0.14),
                          blurRadius: 4.0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(CustomIcons.dragIcon),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    CustomIcons.pencilIcon,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Independent",
                                      style: TextStyle(
                                        color: HexColor("#868686"),
                                        fontFamily: AppTheme.primaryFontFamily,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Container(
                                      height: 1,
                                      width: 100,
                                      color:
                                          Colors.green, //HexColor("#E7E7E7"),
                                      margin: const EdgeInsets.only(top: 5),
                                      padding: const EdgeInsets.all(2),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Transform.scale(
                                  scale: 1.2,
                                  child: Switch(
                                    onChanged: toggleSwitch,
                                    value: isSwitched,
                                    activeColor: Colors.white,
                                    activeTrackColor: HexColor("#00B9E3"),
                                    inactiveThumbColor: Colors.white,
                                    inactiveTrackColor: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Succesful outcome",
                                  style: TextStyle(
                                    color: HexColor("#868686"),
                                    fontFamily: AppTheme.primaryFontFamily,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(CustomIcons.trashIcon, height: 24),
                        )
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  print("Add Prompt level tapped");
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(12),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: HexColor("#00B9E3"),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    "ADD PROMPT LEVEL",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: AppTheme.primaryFontFamily,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              bottomButton()
            ],
          ),
        ),
      ),
    );
  }

  Row bottomButton() {
    return Row(
      children: [
        const Spacer(),
        InkWell(
          onTap: () {
            print("Cancel tapped");
          },
          child: const Text(
            "CANCEL",
            style: TextStyle(
              fontSize: 16,
              fontFamily: AppTheme.primaryFontFamily,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: () {
            print("Cancel tapped");
          },
          child: Text(
            "SAVE",
            style: TextStyle(
              fontSize: 16,
              fontFamily: AppTheme.primaryFontFamily,
              fontWeight: FontWeight.w600,
              color: HexColor("#00B9E3"),
            ),
          ),
        )
      ],
    );
  }

  FormField<String> dropDown() {
    return FormField<String>(
      builder: (FormFieldState<String> state) {
        return InputDecorator(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            // labelStyle: textStyle,
            hintText: 'Automatic prompt level fading hints',
            hintStyle: TextStyle(
              color: HexColor("#868686"),
              fontFamily: AppTheme.primaryFontFamily,
              fontWeight: FontWeight.normal,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.0),
              borderSide: BorderSide(color: HexColor("C9C9C9"), width: 1.2),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: HexColor("C9C9C9"), width: 1.2),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: HexColor("C9C9C9"), width: 1.2),
            ),
          ),
          isEmpty: currentSelectedValue == '',
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: currentSelectedValue,
              focusColor: Colors.transparent,
              elevation: 0,
              icon: Image.asset(CustomIcons.arrowDownIcon1),
              isDense: true,
              onChanged: (newValue) {
                setState(() {
                  currentSelectedValue = newValue ?? "";
                  state.didChange(newValue);
                });
              },
              items: dropdownItems.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
