import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_machine/time_machine.dart';

import '../../../domain/User/Model/user_response/user_response.dart';
import '../detail_screen.dart';
class Secion1 extends StatelessWidget {
  final String url;
  final UserResponse list;
  final double finalworth;

  const Secion1(
      {Key? key,
      required this.url,
      required this.list,
      required this.finalworth})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(url), fit: BoxFit.fill)),
                  ),
                 list.personName !=null? Flexible(
                   flex: 1,
                   fit: FlexFit.loose,
                   child: Text(
                      list.personName!,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                 ):const SizedBox(),
                  Row(
                    children: [
                      list.city !=null?
                      Text(
                        list.city! + ",",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ):const SizedBox(),
                      const SizedBox(
                        width: 5,
                      ),
                     list.countryOfCitizenship!=null? Text(
                        list.countryOfCitizenship!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ):const SizedBox(),
                    ],
                  ),
                  list.birthDate!=null?
                  Text(
                    findBday(list.birthDate!).toString() + " Years Old",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600),
                  ):const SizedBox(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  list.finalWorth!=null?
                  Text(
                    "\$ $finalworth B", 
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.oswald(
                      color: const Color.fromARGB(255, 30, 135, 32),
                      fontSize: 45,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.justify, 
                  ):const SizedBox(),
                  list.source!=null&&list.industries!=null?
                  Flexible(
                    child: SizedBox(
                      width: 140, 
                      child: Text(
                        "Source : " + list.source! + " & \n" + list.industries![0],
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          overflow: TextOverflow.fade,
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ):const SizedBox(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
int findBday(int birthDate) {
  var dt = DateTime.fromMillisecondsSinceEpoch(birthDate);
  // var d12 = DateFormat('MM/dd/yyyy').format(dt);
  LocalDate a = LocalDate.today();
  LocalDate b = LocalDate.dateTime(dt);
  Period diff = a.periodSince(b);

  // print("years: ${diff.years}; months: ${diff.months}; days: ${diff.days}");
  return diff.years;
}
