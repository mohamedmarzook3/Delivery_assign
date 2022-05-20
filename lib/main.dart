import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iphone/detail_screen.dart';
import 'package:iphone/constants.dart';
import 'list.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IPhone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: '',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
int? groupValue = 0;
int index = 1;

  late Function press;
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
    Icon(Icons.restaurant_menu,size: 30),
    Icon(Icons.delivery_dining_rounded,size: 30),
    Icon(Icons.file_copy_rounded,size: 30),
    Icon(Icons.restaurant_rounded,size: 30),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        title: Center(child: Text('Qaayima Manager App',style: TextStyle(color: Colors.black),),),
        actions: [
          IconButton(onPressed: null, icon: Icon(
      IconData(0xee3b, fontFamily: 'MaterialIcons'),
      color: Colors.black,
      size: 30.0,),)
        ],
        leading: IconButton(onPressed: null, icon: Icon(
      IconData(0xeea7, fontFamily: 'MaterialIcons'),
      color: Colors.black,
      size: 30.0,
      
    ),),
      ),
      
      body: Column(
        children: [
          CupertinoPageScaffold(child: SizedBox(
            
            height: 100,
            width: double.maxFinite,
            
            child: Container(
              height: 0,
              width: double.maxFinite,
              alignment: Alignment.topCenter,
              //padding: EdgeInsets.zero,
              padding: EdgeInsets.all(10),
              child: CupertinoSlidingSegmentedControl<int>(
                padding: EdgeInsets.all(10),
              
                groupValue: groupValue,
                children: {
                  0: buildSegment('New'),
                  1: buildSegment('Accepted'),
                  2: buildSegment('Assign to Driver'),
                },
                onValueChanged: (groupValue) {
                  print(groupValue);
                  setState(() => this.groupValue = groupValue);
                },
                
                ),
                
            ),
            
          ),
          
          
          ),
          List(ingredient: '20 min', price: 'AED 105.00', title: 'Order ID #1423', press: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return DetailsScreen(press);}));}, ),
                
        ],
        
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.white)
        ),
        child: CurvedNavigationBar(
          height: 60,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          color: Colors.black,
          backgroundColor: Colors.transparent,
          index: index,items: items),
      ),

      );
  }

  Widget buildSegment(String text) => Container(
      padding: EdgeInsets.all(11),
      child: Text(text,style: TextStyle(fontSize: 12),),
    );
}
