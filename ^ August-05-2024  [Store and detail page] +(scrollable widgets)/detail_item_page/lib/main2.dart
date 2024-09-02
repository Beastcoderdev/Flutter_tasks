import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AccordionExample(),
    );
  }
}

class AccordionExample extends StatefulWidget {
  const AccordionExample({super.key});

  @override
  _AccordionExampleState createState() => _AccordionExampleState();
}

class _AccordionExampleState extends State<AccordionExample> {
  final List<Item> _data = generateItems(5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accordion Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: _data.map<Widget>((Item item) {
            return ExpansionPanelList(
              elevation: 1,
              expandedHeaderPadding: const EdgeInsets.all(0),
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  item.isExpanded = !isExpanded;
                });
              },
              children: [
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      title: Text(item.headerValue),
                    );
                  },
                  body: ListTile(
                    title: Text(item.expandedValue),
                    subtitle: const Text('To delete this panel, tap the trash can icon'),
                    trailing: const Icon(Icons.delete),
                    onTap: () {
                      setState(() {
                        _data.remove(item);
                      });
                    },
                  ),
                  isExpanded: item.isExpanded,
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}
