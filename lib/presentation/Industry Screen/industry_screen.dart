import 'package:flutter/material.dart';
import '../Filter Screen/widgets/options_widget.dart';
import 'widgtes/list_widgets_industry.dart';
class IndustryScreen extends StatelessWidget {
  const IndustryScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        Align(alignment: Alignment.center, child: OptionsWidget()),
        ListWidgetIndustry(),
      ],
    );
  }
}