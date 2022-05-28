import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/filter_bloc/filter_bloc.dart';

class OptionsWidget extends StatelessWidget {
  const OptionsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      BlocProvider.of<FilterBloc>(context)
          .add(const FilterEvent.filterQuery(filterQuery: "youngest"));
    });
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
