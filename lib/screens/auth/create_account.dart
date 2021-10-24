import 'package:davnorvetcare/screens/auth/login.dart';
import 'package:davnorvetcare/screens/components/rounded_btn/rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';


class CreateAccount extends StatefulWidget {
  const CreateAccount({ Key? key }) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool showSpinner = false;
 // final _auth = FirebaseAuth.instance;
  String? email;
  String? password;



  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          elevation: 0,
            leading: _goBackButton(context),
          backgroundColor: Color(0xffE68B7D),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
                child: Text('Create Account',
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.w600,
                      fontSize: 24
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text('Please fill the input below.',
                  style: TextStyle(
                      color: Colors.grey[600],
                     // fontWeight: FontWeight.w400,
                      fontSize: 14
                  ),),
              ),
               Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'First Name',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13, color: Color(0xff2D2C2C)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      style: (TextStyle(
                          color: Color(0xff2D2C2C),
                          fontWeight: FontWeight.w400
                      )),
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                  
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff14DAE2), width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                      onChanged: (value) {
                       // email = value;
                      },
                    ),
                  ],
                ),
              ),
               Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Last Name',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13, color: Color(0xff2D2C2C)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      style: (TextStyle(
                          color: Color(0xff2D2C2C),
                          fontWeight: FontWeight.w400
                      )),
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                  
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff14DAE2), width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                      onChanged: (value) {
                        //email = value;
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'E-mail',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13, color: Color(0xff2D2C2C)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      style: (TextStyle(
                          color: Color(0xff2D2C2C),
                          fontWeight: FontWeight.w400
                      )),
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                  
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff14DAE2), width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                      onChanged: (value) {
                        email = value;
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Password',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13, color: Color(0xff2D2C2C)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      style: (TextStyle(
                          color:Color(0xff2D2C2C),
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
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Confirm Password',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13, color: Color(0xff2D2C2C)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      style: (TextStyle(
                          color:Color(0xff2D2C2C),
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
                    btnText: 'SIGN UP',
                    color: Color(0xffE68B7D),
                    onPressed: () async {
                      setState(() {
                        showSpinner = true;
                      });
                    //  try {
                     //   final newUser =
                     //   await _auth.createUserWithEmailAndPassword(
                     //       email: email, password: password);
                     //   if (newUser != null) {
                     //     Navigator.push(
                     //         context,
                     //         MaterialPageRoute(
                     //             builder: (context) => SuccessScreen()));
                     //   }

                      //  setState(() {
                      //    showSpinner = false;
                      //  });
                     // } catch (e) {
                      //  print(e);
                      //}
                      // Add login code
                    },
                  ),
                ),
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w400
                    ),),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login()));
                    },
                    child: Text('Sign in',
                        style: TextStyle(
                          color: Color(0xffE68B7D),)
                    ),
                  ),
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _goBackButton(BuildContext context) {
  return IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.white),
      onPressed: () {
        Navigator.of(context).pop(true);
      });
}
