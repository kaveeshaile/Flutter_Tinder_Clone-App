import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(home: myapp()));

}

class myapp extends StatefulWidget {
  int position=0;
  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  int position = 0;
  String msg ="";

  @override
  Widget build(BuildContext context) {

List<String> imageConst=[
  "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg",
  "https://images.pexels.com/photos/2659177/pexels-photo-2659177.jpeg?cs=srgb&dl=pexels-wallace-chuck-2659177.jpg&fm=jpg",

  "https://images.pexels.com/photos/1813923/pexels-photo-1813923.jpeg?cs=srgb&dl=pexels-eduardo-dutra-1813923.jpg&fm=jpg",
  "https://images.pexels.com/photos/941693/pexels-photo-941693.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-941693.jpg&fm=jpg"


];
 // int position=0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Tinder Clone App"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Image.network(imageConst[position],
                  width:200.0,
                  height:200.0
              ),
            ),
            FlatButton(
              child: Text("Swap Right",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.blueAccent)),
              onPressed: (){
                this.setState(() {
                  msg="you have matched!";
                });
              },
            ),
            FlatButton(
              child: Text("Swap Left",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.red)),
              onPressed: (){
                this.setState(() {

                  if(position == 3){
                    position = 0;
                    print("no");
                  }
                  else{
                      position +=1;
                  }
                });
              },
            ),
            Text(msg,style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold))

          ],
        ),


      ),






    );
  }
}





// class myapp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//   appBar: AppBar(
//     title: Text("Tinder Clone App"),
//   ),
//       body: Container(
//         child: Column(
//           children: <Widget>[
//             Center(
//               child: Image.network("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg",
//                   width:200.0,
//                   height:200.0
//               ),
//             ),
//             FlatButton(
//               child: Text("Swap Right",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
//               onPressed: (){},
//             ),
//             FlatButton(
//               child: Text("Swap Left",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
//               onPressed: (){},
//             ),
//
//     ],
//         ),
//
//
//       ),
//
//
//
//
//
//
//     );
//   }
// }
