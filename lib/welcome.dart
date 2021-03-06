import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Column(
            children: <Widget>[
              SizedBox(
                height: ( size.height / 10 ) * 1 ,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Welcome',
                    style: TextStyle(fontSize: 30, color: Colors.orangeAccent),
                  )
                ],
              ),
              SizedBox(
                height: (size.height / 10) * 1,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 120.0,
                    width: 5.0,
                    color: Colors.orangeAccent,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Together',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'we can',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'save lives',
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: (size.height / 10) * 1,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: size.width * 2/5,),
                  Material(
                    elevation: 2,
                    color: Colors.orangeAccent,
                    child: MaterialButton(
                      onPressed: ()  {
                        Navigator.pushNamed(context, '/report');
                      },
                      minWidth: 190,
                      child: Text(
                        'Report',
                        style: TextStyle(fontSize: 25,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: (size.height / 10) * 0.5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('images/ata_logo_new.png', width: 180,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('Powered by'),
                      Text('Abeyie Innovation Studios', style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
