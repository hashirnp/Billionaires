import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../application/filter_bloc/filter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/User/Model/user_response/user_response.dart';
import '../Home Screen/widgets/listItem.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<FilterBloc>(context).add(
                                  const FilterEvent.filterQuery(
                                      filterQuery: "youngest")); 
                          },
                          child: const Text("Youngest"),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          )))),
                      const SizedBox(width: 10),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text("Oldest"),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          )))),
                      const SizedBox(width: 10),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text("Women"),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          )))),
                      const SizedBox(width: 10),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text("Men"),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          )))),
                      const SizedBox(width: 10),
                    ]),
              ),
            )),
            ValueListenableBuilder(
                  valueListenable: filterNotifier,
                  builder: (ctx, List<UserResponse> list, _) {
                    if (list.isNotEmpty) {
                      print("List is "+ list.length.toString());
                      return ListView.separated( 
                        physics: const ClampingScrollPhysics(),
                        itemBuilder: (ctx, i) {
                          final item = list[i];
                          return ListItemWidget(item);
                        },
                        separatorBuilder: (ctx, i) {
                          return const SizedBox();
                        },
                        itemCount: list.length,
                        shrinkWrap: true,
                      );
                    }
                    return const Center(
                      child: SpinKitFadingCube(
                        color: Colors.red,
                        size: 50.0,
                        
                      ),
                    );
                  }),
      ],
    );
  }
}
