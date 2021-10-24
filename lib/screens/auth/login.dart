import 'package:davnorvetcare/screens/auth/create_account.dart';
import 'package:davnorvetcare/screens/auth/forgot_password.dart';
import 'package:davnorvetcare/screens/components/rounded_btn/rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';



class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showSpinner = false;
  //final _auth = FirebaseAuth.instance;
  String? email;
  String? password;



  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    width: 175,
                    height: 175,
                    child: //assets nga logo.svg for login ,
                    Center(child: Text('Diri ang logo')),

                  ),
                  ),
                  
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 15, 20, 8),
                      child: Text('Welcome to DavNorVetCare ',
                      style: TextStyle(
                        color:  Color(0xff2D2C2C),
                        fontWeight: FontWeight.w600,
                        fontSize: 20
                      ),
                      ),
                      ),
                  ),
                  SizedBox(height: 25,),
                  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('Please sign in to continue.',
                      style: TextStyle(
                      color:  Color(0xff2D2C2C),
                      fontWeight: FontWeight.w400,
                      fontSize: 13
                  ),
        ),
                ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Email',
                            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13, color:  Color(0xff2D2C2C)),
                          ),
                          SizedBox(height: 10,),
                          TextField(
                            style: (TextStyle(
                              color:  Color(0xff2D2C2C),
                              fontWeight: FontWeight.w400
                              )),
                              keyboardType: TextInputType.emailAddress,
                              cursorColor: Colors.white,
                              obscureText: false,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff14DAE2), width: 2.0),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                  )
                              ),
                              onChanged: (value){
                                email = value;
                              },
                          )
                        ],
                      ),
                      ), 
                    ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Password',
                          style: TextStyle( fontWeight: FontWeight.w300,fontSize: 13,color:  Color(0xff2D2C2C)),
                        ),
                        SizedBox(height: 10,),
                        TextField(
                          style: (TextStyle(
                            color: Color(0xff2D2C2C),
                            fontWeight: FontWeight.w400
                            )),
                            obscureText: true,
                            cursorColor: Colors.white,
                            decoration: InputDecoration(                             
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff14DAE2), width: 2.0),
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          ),
                        ),
                        onChanged: (value) {
                          password = value;
                        },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: RoundedButton(
                      btnText: 'LOGIN',
                      color: Color(0xffE68B7D),
                      onPressed: () async {
                        // Add login code
                        setState(() {
                          showSpinner = true;
                        });
                        //try {
                         // final user = await _auth.signInWithEmailAndPassword(
                         //     email: email, password: password);
                          //if (user != null) {
                         //   Navigator.push(
                         //       context,
                         //       MaterialPageRoute(
                         //           builder: (context) => SuccessScreen()));
                         // }
                         // setState(() {
                         //   showSpinner = false;
                        //  });
                       // } catch (e) {
                       //   print(e);
                       // }
                      },
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                     Get.to(()=>ForgotPassword());
                      },
                    child: Text('Forgot Password?',
                    style: TextStyle(
                      color:  Color(0xffE68B7D)
                    ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont have an account?',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w400
                      ),),
                    TextButton(
                      onPressed: () {
                        Get.to(()=>CreateAccount());
                      },
                      child: Text('Sign up',
                        style: TextStyle(
                            color:  Color(0xffE68B7D),)
                      ),
                    )
                  ],
                )



              ],


            ),
          ),
        ),

      ),
      
    );
  }
}