import 'package:flutter/material.dart';
import 'package:core_mvc/ui/widget/search/search_widget.dart';
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SearchWidget(),
      ],
    );
  }
}