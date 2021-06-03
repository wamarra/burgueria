import 'package:burgueria/utils/app_navigator.dart';
import 'package:flutter/material.dart';

class ListViewItemWidget extends StatefulWidget {
  final int count;

  const ListViewItemWidget({
    Key? key,
    required this.count,
  }) : super(key: key);

  @override
  _ListViewItemWidgetState createState() => _ListViewItemWidgetState();
}

class _ListViewItemWidgetState extends State<ListViewItemWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.all(12.0),
            child: GestureDetector(
              onTap: () => AppNavigator.goToView(context),
              child: Row(
                children: [
                  Image(
                    width: 80,
                    image: AssetImage('assets/images/humburguer.png'),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lorem Ipsum',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30.0,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                'R\$ ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                            Text(
                              '12',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        separatorBuilder: (context, index) => Divider(
              color: Colors.black,
            ),
        itemCount: widget.count);
  }
}
