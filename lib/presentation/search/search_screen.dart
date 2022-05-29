import 'package:company_profit_bloc/domain/User/Model/user_response/user_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/user/user_bloc.dart';
import '../../domain/core/debounce/debounce.dart';
import '../../infrastructure/Search/search_impl.dart';
import '../Home Screen/widgets/list_Item.dart';

ValueNotifier<List<UserResponse>> valueNotifier = ValueNotifier([]);

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _debouncer = Debouncer(milliseconds: 1 * 1000);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<UserBloc>(context).add(const UserEvent.initialEvent());
    });

    List<UserResponse> list = [];

    list.clear();
    list.addAll(BlocProvider.of<UserBloc>(context).state.response);
    SearchData().refreshUI(list: userNotifier.value, query: "");

    return Scaffold(
      appBar: AppBar(
          // The search area here
          title: CupertinoSearchTextField(
        backgroundColor: Colors.white,
        onChanged: (val) {
          _debouncer.run(() {
            SearchData().refreshUI(list: list, query: val);
          });
        },
      )),
      body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: SearchData.instance.searchNotifier,
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
                return const Center(
                  child: Text(
                    "No data available ",
                    style: TextStyle(fontSize: 20),
                  ),
                );
              })),
    );
  }
}
