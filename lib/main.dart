import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: home(),
    );
  }
}

class home extends StatelessWidget {
  const home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soumen Pore', style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 25,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body:
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue.shade200, Colors.blueAccent.shade700],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,

            )),
          child: Padding(
              padding: const EdgeInsets.all(20.0),
          child:
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              shadowColor: Colors.blueAccent.withOpacity(0.3),
              child: Padding(
                  padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Text('Welcome to my App',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20,),
                    Image(image: AssetImage('assets/AICTE.png',),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)
                            ),
                            child: Text('Subscribe', style: TextStyle(color: Colors.white),)),
                        ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)
                            ),
                            child: Text('➕ Follow', style: TextStyle(color: Colors.white),))
                      ],
                    )
                  ]
                )
              )
          )
          )
        )



    );
  }
}