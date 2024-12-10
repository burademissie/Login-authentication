import 'package:flutter/material.dart';



class loginscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return loginstate();
  }
}

class loginstate extends State<loginscreen>{
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formkey,
        child:Column(
          children: [
            Emailfield(),
            Passwordfield(),
            Container(padding:EdgeInsets.only(top: 200.0),),
            raisedbutton(),
          ],
        ) ),
    );
  }
  Widget Emailfield(){
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'biruk23@gmail.com',
          labelText: 'Email',
        ),
        validator: (value){
          if (value==null || !value.contains('@'))
          return "Please enter valid email";
        } ,
        onSaved: (value){
          print(value);
        },
      );
  }
Widget Passwordfield(){
return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      labelText: 'password',
      hintText: 'Password',
    ),
    validator: (value){
      if (value==null || (value.length<5 && !value.contains('#'))){
        return "Please enter valid Password";
      }
    },
    onSaved: (value) =>print(value) ,
  );
  }
  Widget raisedbutton(){
return ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Color.fromARGB(0, 222, 159, 0),
    textStyle: TextStyle(color: const Color.fromARGB(179, 181, 176, 23))
  ),
  onPressed: (){
    if(formkey.currentState!.validate()){
        formkey.currentState!.save();
    }
  }, 
  child: Text("Submit"));
  }
  }