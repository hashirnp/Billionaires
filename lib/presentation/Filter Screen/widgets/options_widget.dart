import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/filter_bloc/filter_bloc.dart';

class OptionsWidget extends StatelessWidget {
  const OptionsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // BlocProvider.of<FilterBloc>(context)
      //     .add(const FilterEvent.filterQuery(filterQuery: "youngest"));
    });
    List<String> list = [
      "Youngest",
      "Oldest",
      "Men",
      "Women",
    ];

    // return ListView.separated(
    //   // scrollDirection: Axis.horizontal, 
    //   itemBuilder: ((context, i) {
    //     return ElevatedButton(
    //         onPressed: () {
    //           BlocProvider.of<FilterBloc>(context)
    //               .add(FilterEvent.filterQuery(filterQuery: list[i]));
    //         },
    //         child: Text(list[i]),
    //         style: ButtonStyle(
    //             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    //                 RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(18.0),
    //         ))));
    //   }),
    //   itemCount: list.length,
    //   shrinkWrap: true,
    //   physics: const ClampingScrollPhysics(),
    //   separatorBuilder: (BuildContext context, int index) {
    //     return const SizedBox(
    //       width: 10,
    //     );
    //   },
    // );
    return Align(
      alignment: Alignment.center,
      child: SingleChildScrollView(
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
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )))),
                    const SizedBox(width: 10),
                    ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<FilterBloc>(context).add(
                              const FilterEvent.filterQuery(
                                  filterQuery: "oldest"));
                        },
                        child: const Text("Oldest"),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )))),
                    const SizedBox(width: 10),
                    ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<FilterBloc>(context).add(
                              const FilterEvent.filterQuery(
                                  filterQuery: "women"));
                        },
                        child: const Text("Women"),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )))),
                    const SizedBox(width: 10),
                    ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<FilterBloc>(context).add(
                              const FilterEvent.filterQuery(
                                  filterQuery: "men"));
                        },
                        child: const Text("Men"),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )))),
                    const SizedBox(width: 10),
                  ]),
            ),
          )),
    );
  }
} 
