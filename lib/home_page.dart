import 'package:flutter/material.dart';
import 'package:learn_widget_flutter/widgets/button.dart';
import 'package:learn_widget_flutter/widgets/center.dart';
import 'package:learn_widget_flutter/widgets/container.dart';
import 'package:learn_widget_flutter/widgets/decoration_container.dart';
import 'package:learn_widget_flutter/widgets/expanded_flexible.dart';
import 'package:learn_widget_flutter/widgets/flexible.dart';
import 'package:learn_widget_flutter/widgets/font_test.dart';
import 'package:learn_widget_flutter/widgets/image.dart';
import 'package:learn_widget_flutter/widgets/mediaquery.dart';
import 'package:learn_widget_flutter/widgets/navigation_01.dart';
import 'package:learn_widget_flutter/widgets/padding_pembungkus.dart';
import 'package:learn_widget_flutter/widgets/row_column.dart';
import 'package:learn_widget_flutter/widgets/scaffold.dart';
import 'package:learn_widget_flutter/widgets/textfield_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _menus = const [
    "Button",
    "Center",
    "Container",
    "Decoration Container",
    "Font Test",
    "Image",
    "Padding Pembungkus",
    "Row Column",
    "Scaffold",
    "Textfield Widget",
    "Expanded + Flexible",
    "Flexible",
    "Navigation",
    "MediaQuery",
  ];
  int _indexPage = 0;

  pilihPage() => ();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Page: ${_menus[_indexPage]}",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            for (String menu in _menus)
              ListTile(
                title: Text(menu),
                onTap: () {
                  setState(() {
                    _indexPage = _menus.indexOf(menu);
                  });
                  Navigator.pop(context);
                },
              ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _indexPage,
        children: [
          WidgetButton(),
          WidgetCenter(),
          WidgetContainer(),
          WidgetDecorationContainer(),
          WidgetFontTest(),
          WidgetImage(),
          WidgetPaddingPembungkus(),
          WidgetRowColumn(),
          WidgetScaffold(),
          WidgetTextfieldWidget(),
          WidgetExpandedFlexible(),
          ExpandedFlexiblePage(),
          WidgetNavigation01("pertama buka"),
          WidgetMediaquery(),
        ],
      ),
    );
  }
}
