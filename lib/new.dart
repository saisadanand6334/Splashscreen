import 'package:flutter/material.dart';
import 'package:newprofil/profile.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
        title: Center(
          child: Text('Login',style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),),


        ),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10,),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [SizedBox(height: 100,),
              Center(
                child: CircleAvatar(
                  radius: 54,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person,size: 110,
                    color: Colors.white,),),
              ),SizedBox(height: 40,),
              TextField(
                decoration: InputDecoration(
                  label: Text('EMAIL',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),),
                  border: OutlineInputBorder(borderRadius:BorderRadius.circular(30)),
                ),
              ),SizedBox(height: 15,),
              TextField(decoration: InputDecoration(
                label: Text("PASSWORD",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal
                ),),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),),SizedBox(height: 15,),
              ElevatedButton(  onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()
                )
                );
              }, child: Text('login')),
              SizedBox(height: 20,),
              Text('forgot password'),



            ],

          ),
        ),
      ),


    );
  }
}

