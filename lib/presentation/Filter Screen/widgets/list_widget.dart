import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../application/filter_bloc/filter_bloc.dart';
import '../../../domain/User/Model/user_response/user_response.dart';
import '../../Home Screen/widgets/list_Item.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<FilterBloc, FilterState>(builder: (context, state) {
    //   if (state.response.isNotEmpty) {
    //     return ListView.separated(
    //       physics: const ClampingScrollPhysics(),
    //       itemBuilder: (ctx, i) {
    //         final item = state.response[i];
    //         return ListItemWidget(item);
    //       },
    //       separatorBuilder: (ctx, i) {
    //         return const SizedBox();
    //       },
    //       itemCount: state.response.length,
    //       shrinkWrap: true,
    //     );
    //   } else {
    //     return const Center(
    //       child: SpinKitFadingCube(
    //         color: Colors.red,
    //         size: 50.0,
    //       ),
    //     );
    //   }
    //   // return const Center(
    //   //   child: Text("Error while loading"),
    //   // );
    // });

    return ValueListenableBuilder(
        valueListenable: filterNotifier,
        builder: (ctx, List<UserResponse> list, _) {
          if (list.isNotEmpty) {
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
          } else {
            return const Center(
              child: SpinKitFadingCube(
                color: Colors.red,
                size: 50.0,
              ),
            );
          }
        });
  }
}
