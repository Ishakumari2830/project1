import 'package:flutter/material.dart';

import 'menupage.dart';

class loginpage extends StatefulWidget{

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  var emailText = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: SingleChildScrollView(
        child: Center(

            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/ggvlogo.png',
                          width: 150,
                      height: 150,)
                      ,
                      SizedBox(
                        height: 30,
                      ),
                      Text('Hello there!',style: TextStyle(
                          fontSize: 30,

                          color: Colors.black
                      ),),
                      Text('welcome Back',style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent
                      ),),
                    ],
                  ),
                ),




                SizedBox(height: 60,),

                Container(
                  height: 284,
                  width: double.infinity,
                  color: Colors.red,
                  child: Center(
                      child: Container(
                          width:200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextField(

                                  controller: emailText,

                                  decoration: InputDecoration(
                                    hintText : "enrollment no.",
                                    focusedBorder: OutlineInputBorder( //for clicked one

                                        borderRadius: BorderRadius.circular(35),
                                        borderSide: BorderSide(
                                            color : Colors.deepPurpleAccent,
                                            width:2
                                        )


                                    ),
                                    enabledBorder: OutlineInputBorder( //for unclicked one
                                        borderRadius: BorderRadius.circular(21),
                                        borderSide: BorderSide(
                                            color : Colors.deepPurpleAccent,
                                            width:2
                                        )


                                    ),
                                    disabledBorder: OutlineInputBorder( //for unclicked one
                                        borderRadius: BorderRadius.circular(21),
                                        borderSide: BorderSide(
                                            color : Colors.black,
                                            width:2
                                        )


                                    ),
                                    //now we want hint while writing
                                    //suffixText: "username exits",

                                    prefixIcon:Icon(Icons.verified_user_sharp,color : Colors.yellow),






                                  )),
                              Container(height: 21,),
                              TextField(

                                  controller: password,
                                  obscureText: true,
                                  obscuringCharacter: '*',
                                  decoration: InputDecoration(
                                    hintText: "enter password",

                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(21),
                                        borderSide: BorderSide(
                                            color : Colors.black)
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(Icons.remove_red_eye,color : Colors.yellow),
                                      onPressed: (){

                                      },
                                    ),
                                  )),
                              ElevatedButton(onPressed: (){
                                String uEmail = emailText.text.toString();
                                String upass = password.text;


                                print("email: $uEmail, password:$upass");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context)=> MenuScreen(),)
                                );






                              }, child: Container(




                                child: Text(
                                    'login'
                                ),
                              ),

                              ),
                            ],
                          ))



                  ),
                ),



              ],
            ),
          ),
        ),

    );
  }
}
