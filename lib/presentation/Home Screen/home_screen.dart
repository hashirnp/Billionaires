import 'package:company_profit_bloc/domain/User/Model/user_response/user_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../application/user/user_bloc.dart';
import 'widgets/list_Item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this, // the SingleTickerProviderStateMixin
      duration: const Duration(milliseconds: 1200),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<UserBloc>(context).add(const UserEvent.initialEvent());
    });

    return SafeArea(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            // child: SafeArea(child: BlocBuilder<UserBloc, UserState>(
            //   builder: (context, state) {
            //     if (state.isLoading) {
            //       return const Center(
            //         child: CircularProgressIndicator(
            //           strokeWidth: 2,
            //         ),
            //       );
            //     } else if (state.isError) {
            //       return const Center(
            //         child: Text('Error'),
            //       );
            //     } else if (state.response.isNotEmpty) {
            //       dummyList.clear();
            //       dummyList.addAll(state.response);
            //       return ListView.separated(
            //         physics: const ClampingScrollPhysics(),
            //         itemBuilder: (ctx, i) {
            //           final item = state.response[i];
            //           return ListItemWidget(item);
            //         },
            //         separatorBuilder: (ctx, i) {
            //           return const SizedBox();
            //         },
            //         itemCount: state.response.length,
            //         shrinkWrap: true,
            //       );
            //     } else {
            //       return const Center(
            //         child: Text('Error'),
            //       );
            //     }
            //   },
            // )),
            child: SafeArea(
              child: ValueListenableBuilder(
                  valueListenable: userNotifier,
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
                    }
                    return Center(
                      child: SpinKitFadingCube(
                        color: Colors.blue,
                        size: 50.0,
                        controller: _controller,
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
