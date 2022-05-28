import 'package:company_profit_bloc/application/filter_bloc/filter_bloc.dart';
import 'package:company_profit_bloc/presentation/Filter%20Screen/widgets/list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'widgets/options_widget.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children:const [
         Align(alignment: Alignment.center, child: OptionsWidget()),
         ListWidget(),
      ],
    );
    // return ListWidget(); 
  }
} 
