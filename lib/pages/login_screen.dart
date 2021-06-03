import 'package:burgueria/utils/app_navigator.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Color(0xff8D0000)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60,
                        backgroundImage:
                            AssetImage('assets/images/avatar.jpeg'),
                      ),
                      SizedBox(height: 35),
                      Text(
                        'BRUNO P SIQUEIRA',
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 24.0,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'BRUNO@GMAIL.COM',
                        style: TextStyle(
                          color: Colors.amber.shade200.withOpacity(0.4),
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(height: 45),
                      SizedBox(
                        width: 320,
                        height: 55,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            onPrimary: Color(0xFF8D0000),
                            textStyle: TextStyle(fontSize: 18),
                          ),
                          onPressed: () => AppNavigator.goToList(context),
                          child: Text('ENTRAR'),
                        ),
                      ),
                      SizedBox(height: 25),
                      SizedBox(
                        width: 320,
                        height: 55,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: Colors.amber.withOpacity(0.7),
                            side: BorderSide(
                                width: 2, color: Colors.amber.withOpacity(0.7)),
                            textStyle: TextStyle(fontSize: 18),
                          ),
                          onPressed: () => AppNavigator.goToHome(context),
                          child: Text('NÃO SOU ESTE USUÁRIO'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(45.0),
                        child: Text(
                          'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                          style: TextStyle(
                              color: Colors.amber.withOpacity(0.7),
                              fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
