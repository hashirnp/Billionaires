import 'package:company_profit_bloc/presentation/Filter%20Screen/widgets/list_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/options_widget.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: double.infinity,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children:const [
             Align(alignment: Alignment.center, child: OptionsWidget()),
             ListWidget(),
          ],
        ),
      ),
    );
    // return ListWidget(); 
  }
} 
