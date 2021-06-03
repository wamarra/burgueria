import 'package:flutter/material.dart';

class ViewScreen extends StatefulWidget {
  @override
  _ViewScreenState createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: const Text(
            'MACDONALDE',
            style: TextStyle(
              color: Colors.amber,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage('assets/images/humburguer.png'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        'R\$ ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    Text(
                      '12',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 50.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Lorem Ipsum',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40.0,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 20),
                Divider(),
                SizedBox(height: 20),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16.0,
                  ),
                ),
                _buildItemOpcional(),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => _showDialog(),
          label: const Text('COMPRAR AGORA'),
          backgroundColor: Colors.amber,
          foregroundColor: Color(0xFF8D0000),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: _defaultShape(),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Lorem Ipsum",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              _getCloseButton(context),
            ],
          ),
          content: Text(
            "Lorem ipsum dolor sit amet, eiusmod consectetur elit",
          ),
          actions: <Widget>[
            SizedBox(
              width: 320,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  primary: Colors.green.shade900,
                  onPrimary: Colors.white,
                  textStyle: TextStyle(fontSize: 18),
                ),
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ),
          ],
        );
      },
    );
  }

  _getCloseButton(context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          alignment: FractionalOffset.topRight,
          child: GestureDetector(
            child: Icon(
              Icons.clear,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }

  ShapeBorder _defaultShape() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    );
  }

  Padding _buildItemOpcional() {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
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
    );
  }
}
