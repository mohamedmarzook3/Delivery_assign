import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iphone/constants.dart';

import 'detail_screen.dart';
//import 'package:flutter_application_1/screens/details_screen.dart';

class List extends StatelessWidget {
  final String title;
  final String ingredient;
  final String price;
  final Function press;
  const List({
    Key? key, required this.title, required this.ingredient, required this.price,required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsScreen(press)),);
          },
      
      child: Container(
        margin: EdgeInsets.only(left: 10,),
        height: 250,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              right: 10,
              bottom: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 240,
                  width: 500,
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: kPrimaryColor.withOpacity(.06),
                  ),
                ),
              ),
            ),
            /*Positioned(
              top: 0,
              right: 40,
              child: Container(
                height: 131,
                width: 181,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(.15),
                  
                ),
              ),
            ),*/
            /*Positioned(
              top: 10,
              right: 28,
              child: Container(
                height: 131,
                width: 181,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(.15),
                ),
              ),
            ),*/
            Positioned(
            right: 35,
            top: 70,
            child: Text("\ $price",style: Theme.of(context).textTheme.headline!.copyWith(color: Colors.black),)),
            
            Positioned(
              right: 35,
              top: 100,
              child: Text(" Cash on Delivery ",style: TextStyle(
                    color: kTextColor.withOpacity(.4)
                  ),),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Column(
              children: [
                Text(title,
                style: Theme.of(context).textTheme.title,),
                
                
              ],
            )),
            Positioned(
                  top: 30,
                  left: 10,
                  child: Text("$ingredient\n Cafe Resro| Al Nahda 01, Mai Tower ",style: TextStyle(
                    color: kTextColor.withOpacity(.4)
                  ),),
                ),
            Positioned(
                  top: 80,
                  left: 30,
                  child: SizedBox(
                    height: 35,
                    width: 100,
                    child: CupertinoButton(onPressed: () { 
                      showDialog(context: context, builder: (context) => AlertDialog(
                        title: Center(child: Text('data',style: TextStyle(fontSize: 22))),
                        content: Column(
                          children: [
                            Text('data',style: TextStyle(fontSize: 16),),
                            ListTile(
              title: Text('Driver 1'),
              leading: Icon(Icons.airport_shuttle),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              title: Text('Driver 2'),
              leading: Icon(Icons.airport_shuttle),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              title: Text('Driver3'),
              leading: Icon(Icons.airport_shuttle),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              title: Text('Driver 4'),
              leading: Icon(Icons.airport_shuttle),
            ),
                          ],
                        ),
                        
                        actions: [
                          CupertinoDialogAction(child: Text('Cancel'),
                          onPressed: () => Navigator.pop(context),
                          ),
                          CupertinoDialogAction(child: Text('Done'),
                          onPressed: () => Navigator.pop(context),
                          ),
                        
                        ],
                      ),);
                     },
                color: Colors.pinkAccent,
                disabledColor: Colors.black12,
                padding: EdgeInsets.zero,
                child: Text("data",)),
                  ))
            /*Positioned(
              top: 0,
              right: 20,
              child: Container(
                height: 125,
                width: 141,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/2-pizza-png-image.png"))
                ),
              ),
            )*/
          ],
        ),
      ),
    );
  }
}