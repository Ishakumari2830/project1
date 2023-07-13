import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled9/deals.dart';
import 'package:untitled9/notification.dart';
import 'package:untitled9/podcasts.dart';
class BeautifulButton extends StatelessWidget {
  final String buttonText1;
  final String buttonText2;
  final VoidCallback onPressed;

  const BeautifulButton({
    Key? key,
    required this.buttonText1,
    required this.buttonText2,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){ this.onPressed();},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
      ),
      child: RichText(
        text:  TextSpan(children: <TextSpan>[
          TextSpan(
              text: buttonText1,
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic)),
          TextSpan(
              text: buttonText2,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.blueAccent,
                  fontStyle: FontStyle.italic))
        ]),
      ),
    );
  }
}
class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Menu',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ,fontFamily: 'Raleway' ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BeautifulButton(
                buttonText1: 'Offc', buttonText2: 'Info', onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>notify(),));
            }),
            BeautifulButton(
                buttonText1: 'Dil', buttonText2: 'KiBaat', onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MusicPlayer(),));
            },
            ),
            BeautifulButton(
                buttonText1: 'Deals', buttonText2: '4u', onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>deals(),));

            }),
          ],
        ),
      ),
    );
  }
}


// class menupage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Menu'),
//       ),
//       body:
//
//
//       Center(
//
//
//         child: Column(
//           children: [
//             RichText(
//
//               text: TextSpan(
//
//                 children: <TextSpan>[
//                   TextSpan(text: 'offc',style: TextStyle(fontSize: 40,
//                     color: Colors.red,
//                     fontWeight: FontWeight.bold,
//                     fontStyle:FontStyle.italic,)),
//                   TextSpan(text: 'Info  ',style: TextStyle(
//                     fontSize: 40,
//                     color: Colors.blue,
//                     fontWeight: FontWeight.bold,
//                     fontStyle:FontStyle.italic,
//                   )),
//                 ],),),
//
//             SizedBox(
//               height: 60,
//             ),
//
//             Container(
//               color: Colors.white,
//               child: ElevatedButton(
//
//
//
//                   onPressed: (){
//
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context)=> MusicPlayer(),)
//                     );
//                   }, child:
//               Container(
//                 color: Colors.white,
//
//                 child: RichText(
//
//                   text: TextSpan(
//                       children: <TextSpan>[
//                         TextSpan(
//                             text: 'Dilki',style: TextStyle(fontSize: 40,
//                             color: Colors.red,
//                             fontWeight: FontWeight.bold,
//                             fontStyle:FontStyle.italic)
//
//                         ),
//                         TextSpan(
//                             text: 'Baat ',
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 50,
//                                 color: Colors.blueAccent,
//                                 fontStyle:FontStyle.italic
//                             )
//                         )
//                       ]
//                   ),),
//
//
//               )
//
//               ),
//             )
//
//
//
//
//           ],
//         ),
//       ),
//
//
//
//
//
//     );
//   }
//
// }