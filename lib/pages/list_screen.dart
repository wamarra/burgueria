import 'package:burgueria/utils/app_navigator.dart';
import 'package:burgueria/widgets/list_view_item_widget.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'MACDONALDE',
          style: TextStyle(
            color: Colors.amber,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/images/icons/burger@2x.png'),
            onPressed: () => AppNavigator.goToHome(context),
          ),
        ],
      ),
      body: ListViewItemWidget(count: 30),
    );
  }
}
