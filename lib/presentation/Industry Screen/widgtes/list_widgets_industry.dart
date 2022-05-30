import 'package:company_profit_bloc/presentation/Home%20Screen/widgets/list_Item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../application/indsutry/industry_bloc.dart';

class ListWidgetIndustry extends StatelessWidget {
  const ListWidgetIndustry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
          BlocBuilder<IndustryBloc, IndustryState>(builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: SpinKitFadingCube(color: Colors.red, size: 50),
          );
        }
        if (state.isError) {
          return const Center(
            child: Text("Error while loading data"),
          );
        }
        if (state.response.isNotEmpty) {
          return ListView.separated(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, i) {
                final item = state.response[i];
                return ListItemWidget(item);
              },
              separatorBuilder: (context, i) {
                return const SizedBox();
              },
              itemCount: state.response.length);
        }
        return const SizedBox();
      }),
    );
  }
}

class IndustryBloc {}
