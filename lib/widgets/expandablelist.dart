import 'package:flutter/material.dart';
import '../models/item.dart';

class ExpandableList extends StatefulWidget {
  @override
  _ExpandableListState createState() => _ExpandableListState();
}

class _ExpandableListState extends State<ExpandableList> {
  List<Item> _data = generateItem(5);

  Widget _builtListPanel() {
    return ExpansionPanelList(
      expansionCallback: (index, isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(item.headerValue),
              );
            },
            body: ListTile(
              title: Text(item.expandedValue),
            ),
            isExpanded: item.isExpanded);
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: _builtListPanel(),
        ),
      ),
    );
  }
}
