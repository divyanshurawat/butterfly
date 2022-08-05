import 'package:butterfly/Extensions/ColorExtension.dart';
import 'package:butterfly/Extensions/CustomIcons/CustomIcons.dart';
import 'package:flutter/material.dart';

class AddWorkFlow extends StatefulWidget {
  const AddWorkFlow({Key? key}) : super(key: key);

  @override
  State<AddWorkFlow> createState() => _AddWorkFlowState();
}

class _AddWorkFlowState extends State<AddWorkFlow> {
  var workflowNameController = TextEditingController();
  var isChecked = false;

  final dropdownItems = ["Test", "Test1", "Test2"];
  var currentSelectedValue = "Test";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#E5E5E5"),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 0,
        title: Text(
          "Add Workflow",
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
                controller: workflowNameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Workflow Name",
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
              Container(
                // height: 150,
                margin: const EdgeInsets.only(left: 0, right: 0, bottom: 10),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 0, top: 10, bottom: 5),
                      child: commonView(
                          CustomIcons.probeIcon, "Probe", HexColor("#FBBF24"),
                          isSingle: true),
                    ),
                    Divider(thickness: 1, color: HexColor("#E7E7E7")),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 0, bottom: 5),
                            child: Text(
                              "Probe trials for new targets",
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: AppTheme.primaryFontFamily,
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(child: dropDown()),
                              Text(
                                "3 trials",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontFamily: AppTheme.primaryFontFamily,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          const Divider(thickness: 1, color: Colors.grey),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              children: [
                                commonView(CustomIcons.probeIcon, "Probe",
                                    HexColor("#FBBF24")),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 0),
                                  child: Image.asset(CustomIcons.arrowLeftIcon,
                                      height: 24),
                                ),
                                commonView(CustomIcons.masteredIcon, "Mastered",
                                    HexColor("#219653")),
                              ],
                            ),
                          ),
                          Container(
                            child: const Text(
                              "Accuracy to master immediately",
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: AppTheme.primaryFontFamily,
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(child: dropDown()),
                              Text(
                                "100 %",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontFamily: AppTheme.primaryFontFamily,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          const Divider(thickness: 1, color: Colors.grey),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 0, right: 0, bottom: 10),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 0, top: 10, bottom: 5),
                      child: Row(
                        children: [
                          commonView(CustomIcons.acquisitionIcon, "Acquisition",
                              HexColor("#00B9E3"),
                              isSingle: true),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 0),
                            child: Image.asset(CustomIcons.arrowLeftIcon,
                                height: 24),
                          ),
                          commonView(CustomIcons.masteredIcon, "Mastered",
                              HexColor("#219653"),
                              isSingle: true),
                        ],
                      ),
                    ),
                    Divider(thickness: 1, color: HexColor("#E7E7E7")),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: HexColor("#00B9E3"),
                          borderRadius: BorderRadius.circular(4)),
                      alignment: Alignment.center,
                      child: const Text(
                        "Use Cold probes",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: AppTheme.primaryFontFamily,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            child: Text(
                              "Trials per probe",
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: AppTheme.primaryFontFamily,
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(child: dropDown()),
                              Text(
                                "123",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontFamily: AppTheme.primaryFontFamily,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          const Divider(thickness: 1, color: Colors.grey),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              children: [
                                commonView(CustomIcons.probeIcon, "Probe",
                                    HexColor("#FBBF24")),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 0),
                                  child: Image.asset(CustomIcons.arrowLeftIcon,
                                      height: 24),
                                ),
                                commonView(CustomIcons.masteredIcon, "Mastered",
                                    HexColor("#219653")),
                              ],
                            ),
                          ),
                          Container(
                            child: const Text(
                              "Consecutive sessions",
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: AppTheme.primaryFontFamily,
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(child: dropDown()),
                              Text(
                                "3 sessions",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontFamily: AppTheme.primaryFontFamily,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          const Divider(thickness: 1, color: Colors.grey),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 0, right: 0, bottom: 10),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 0, top: 10, bottom: 5),
                      child: Row(
                        children: [
                          commonView(CustomIcons.masteredIcon, "Mastered",
                              HexColor("#219653"),
                              isSingle: true),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 0),
                            child: Image.asset(CustomIcons.arrowLeftIcon,
                                height: 24),
                          ),
                          commonView(CustomIcons.acquisitionIcon, "Acquisition",
                              HexColor("#00B9E3"),
                              isSingle: true),
                        ],
                      ),
                    ),
                    Divider(thickness: 1, color: HexColor("#E7E7E7")),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: HexColor("#00B9E3"),
                          borderRadius: BorderRadius.circular(4)),
                      alignment: Alignment.center,
                      child: const Text(
                        "Use Cold probes",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: AppTheme.primaryFontFamily,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            child: Text(
                              "Revert to acquisition for accuracy below",
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: AppTheme.primaryFontFamily,
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(child: dropDown()),
                              Text(
                                "%",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontFamily: AppTheme.primaryFontFamily,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          const Divider(thickness: 1, color: Colors.grey),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              children: [
                                commonView(CustomIcons.probeIcon, "Probe",
                                    HexColor("#FBBF24")),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 0),
                                  child: Image.asset(CustomIcons.arrowLeftIcon,
                                      height: 24),
                                ),
                                commonView(CustomIcons.masteredIcon, "Mastered",
                                    HexColor("#219653")),
                              ],
                            ),
                          ),
                          Container(
                            child: const Text(
                              "Revert to acquisition for accuracy below",
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: AppTheme.primaryFontFamily,
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(child: dropDown()),
                              Text(
                                "sessions",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontFamily: AppTheme.primaryFontFamily,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          const Divider(thickness: 1, color: Colors.grey),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 0, right: 0, bottom: 10),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 0, top: 10, bottom: 5),
                      child: commonView(CustomIcons.waitingIcon, "Waiting",
                          HexColor("#00B9E3"),
                          isSingle: true),
                    ),
                    Divider(thickness: 1, color: HexColor("#E7E7E7")),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 10),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                isChecked = !isChecked;
                                setState(() {});
                              },
                              child: Image.asset(
                                  isChecked
                                      ? CustomIcons.checkedIcon
                                      : CustomIcons.checkBoxIcon,
                                  height: 24)),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Text(
                              "Automatically open new targets when targets are mastered",
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: AppTheme.primaryFontFamily,
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              bottomButton()
            ],
          ),
        ),
      ),
    );
  }

  FittedBox commonView(String icon, String title, Color color,
      {isSingle = false}) {
    return FittedBox(
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: 8, vertical: isSingle ? 6 : 4),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(22)),
        alignment: Alignment.center,
        child: Row(
          children: [
            Image.asset(icon, height: 20),
            const SizedBox(width: 5),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: AppTheme.primaryFontFamily,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ],
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
            items: dropdownItems.map((String value) {
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
