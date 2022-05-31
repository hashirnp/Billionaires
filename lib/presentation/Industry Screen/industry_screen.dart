import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/indsutry/industry_bloc.dart';
import '../../domain/core/shared_preferences/ThemeData.dart';
import 'widgtes/list_widgets_industry.dart';

class IndustryScreen extends StatefulWidget {
  const IndustryScreen({Key? key}) : super(key: key);

  @override
  State<IndustryScreen> createState() => _IndustryScreenState();
}

class _IndustryScreenState extends State<IndustryScreen> {
  String dropdownValue = 'Automotive';

  @override
  Widget build(BuildContext context) {
    final list = [
      "Automotive",
      "Technology",
      "Fashion",
      "Diversified",
      "Finance",
      "Investments",
      "Retail",
    ];
    // Future<List<DropList>> listN = getList();
    // print("list is " + listN.toString());
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const ClampingScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            child: DropdownButtonHideUnderline(
              child: DropdownButton2(
                focusColor: buildMaterialColor(const Color(0xFF264d91)),
                isExpanded: true,
                items: list
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                              // fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ))
                    .toList(),
                value: dropdownValue,
                onChanged: (value) {
                  setState(() {
                    dropdownValue = value as String;
                    BlocProvider.of<IndustryBloc>(context).add(
                  IndustryEvent.initialEvent(indsutryQuery: value.toString()));
                  });
                },
                icon: const Icon(
                  Icons.arrow_forward_ios_outlined,
                ),
                iconSize: 14,
                iconEnabledColor: Colors.white,
                iconDisabledColor: Colors.grey,
                buttonHeight: 50,
                buttonWidth: double.infinity,
                buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                buttonDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                  color: buildMaterialColor(const Color(0xFF264d91)),
                ),
                buttonElevation: 2,
                itemHeight: 40,
                itemPadding: const EdgeInsets.only(left: 14, right: 14),
                dropdownMaxHeight: 200,
                dropdownFullScreen: true, 
                dropdownPadding: null,
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: buildMaterialColor(const Color(0xFF264d91)),
                ),
                dropdownElevation: 8,
                scrollbarRadius: const Radius.circular(40),
                scrollbarThickness: 6,
                scrollbarAlwaysShow: true,
                offset: const Offset(0, 0),
              ),
            ),
          ),
          // alignment: Alignment.center,
          //     child: DropdownButton(
          //   isExpanded: true,
          //   value: dropdownValue,
          //   icon: const Icon(Icons.get_app),
          //   elevation: 16,
          //   style: const TextStyle(color: Colors.deepPurple, fontSize: 15),
          //   underline: Container(
          //     height: 2,
          //     color: Colors.deepPurpleAccent,
          //   ),
          //   onChanged: (val) {
          //     setState(() {
          //       dropdownValue = val.toString();
          //     });
          //     BlocProvider.of<IndustryBloc>(context).add(
          //         IndustryEvent.initialEvent(indsutryQuery: val.toString()));
          //   },
          //   items: list.map<DropdownMenuItem<String>>((String value) {
          //     return DropdownMenuItem<String>(
          //       value: value,
          //       child: Text(value),
          //     );
          //   }).toList(),
          // )

          // ),
        ),
        const ListWidgetIndustry(),
      ],
    );

    // return const ListWidgetIndustry();
  }

  // Future<List<DropList>> getList() async {
  //   List<String> list = [];
  //   Response response = await Dio(BaseOptions()).get(allBillionairesUrl);
  //   if (response.statusCode == 201 || response.statusCode == 200) {
  //     print("success " + response.toString());

  //     final result = (response.data['industries'] as List).map((e) {
  //       log("list is " + e.toString());
  //       return DropList.fromJson(e);
  //     }).toList();

  //     return result;
  //   } else {
  //     print("failed");

  //     return [];
  //   }
  // }
}

// class DropList {
//   List<String>? industries;
//   DropList({
//     required this.industries,
//   });

//   factory DropList.fromJson(Map<String, dynamic> data) {
//     // note the explicit cast to String
//     // this is required if robust lint rules are enabled
//     final industries = data['name'] as List<String>;

//     return DropList(industries: industries);
//   }
// }
