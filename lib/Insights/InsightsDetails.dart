import 'package:butterfly/Extensions/ColorExtension.dart';
import 'package:butterfly/Extensions/CustomIcons/CustomIcons.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class InsightsDetails extends StatefulWidget {
  const InsightsDetails({Key? key}) : super(key: key);

  @override
  State<InsightsDetails> createState() => _InsightsDetailsState();
}

class _InsightsDetailsState extends State<InsightsDetails> {
  var masteredTargetController = TextEditingController();

  var isAdditionView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F5F4F6"),
      appBar: AppBar(
        backgroundColor: Colors.white,
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
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: HexColor("#C9C9C9"), width: 1),
          ),
          child: SingleChildScrollView(
            child: Stack(
              // alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    TextField(
                      controller: masteredTargetController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "New Mastered Targets",
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Divider(thickness: 1, color: HexColor("#E7E7E7")),
                    ),
                    Row(
                      children: [
                        Text(
                          "Previous 3 months (90 days)",
                          style: TextStyle(
                            color: HexColor("#414141"),
                            fontFamily: AppTheme.primaryFontFamily,
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child:
                              Image.asset(CustomIcons.downloadIcon, height: 30),
                        ),
                        const SizedBox(width: 15),
                        GestureDetector(
                          onTap: () {
                            isAdditionView = true;
                            setState(() {});
                          },
                          child:
                              Image.asset(CustomIcons.filterIcon, height: 30),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border:
                            Border.all(color: HexColor("#C9C9C9"), width: 1),
                      ),
                      child: Column(
                        children: [
                          chartView(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(CustomIcons.occurranceIcon),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  "Occurrences per hour",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: AppTheme.primaryFontFamily,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: HexColor("#00B9E3"),
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "Independent",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: AppTheme.primaryFontFamily,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      // padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border:
                            Border.all(color: HexColor("#C9C9C9"), width: 1),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  "Date",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: AppTheme.primaryFontFamily,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "Session",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: AppTheme.primaryFontFamily,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "Succes-rate",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: AppTheme.primaryFontFamily,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 45,
                            color: HexColor("#E7E7E7"),
                            padding: const EdgeInsets.only(right: 45, top: 5),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Spacer(),
                                Column(
                                  children: [
                                    Text(
                                      "Average",
                                      style: TextStyle(
                                        color: HexColor("#00B9E3"),
                                        fontFamily: AppTheme.primaryFontFamily,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      "0%",
                                      style: TextStyle(
                                        color: HexColor("#00B9E3"),
                                        fontFamily: AppTheme.primaryFontFamily,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  "12/9/2021",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: AppTheme.primaryFontFamily,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: AppTheme.primaryFontFamily,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  "0%",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: AppTheme.primaryFontFamily,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                isAdditionView
                    ? Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.1),
                        height: 340,
                        color: Colors.black38,
                        child: Container(
                          margin: const EdgeInsets.only(left: 70),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Spacer(),
                                  CloseButton(onPressed: () {
                                    isAdditionView = false;
                                    setState(() {});
                                  })
                                ],
                              ),
                              additionalItemView(CustomIcons.calendarIcon,
                                  "Previous 3 months (90 days)"),
                              additionalItemView(
                                  CustomIcons.usageIcon, "Session Data"),
                              additionalItemView(
                                  CustomIcons.arrowRightIcon, "Daily"),
                              additionalItemView(
                                  CustomIcons.arrowUpIcon, "Success-Rate"),
                              additionalItemView(
                                  CustomIcons.filterIcon, "Filter"),
                              additionalItemView(
                                  CustomIcons.layerIcon, "Group by"),
                              chartTypeView()
                            ],
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container chartView() {
    return Container(
      height: 220,
      child: charts.BarChart(
        [
          charts.Series<String, String>(
            id: '',
            domainFn: (sales, _) => "250",
            measureFn: (sales, _) => 150,
            dashPatternFn: (sales, _) => [0, 5, 100, 150],
            data: [""],
          )
        ],
        animate: false,
      ),
    );
  }

  Container additionalItemView(String image, String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: HexColor("#C9C9C9"), width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 22, color: Colors.black),
          const SizedBox(width: 8),
          Text(
            title,
            style: TextStyle(
              color: HexColor("#414141"),
              fontFamily: AppTheme.primaryFontFamily,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
          const SizedBox(width: 8),
          Image.asset(CustomIcons.dropdownIcon, height: 22),
        ],
      ),
    );
  }

  Container chartTypeView() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: HexColor("#C9C9C9"), width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(CustomIcons.lineChartIcon, height: 22),
          Image.asset(CustomIcons.antChartIcon, height: 22),
          Image.asset(CustomIcons.glyphChartIcon, height: 22),
          Image.asset(CustomIcons.scatterChartIcon, height: 22),
        ],
      ),
    );
  }
}

class OrdinalSales {
  final int sales;

  OrdinalSales(this.sales);
}
