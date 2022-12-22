import 'package:flutter/material.dart';

class AssignmentLogin extends StatefulWidget {
  const AssignmentLogin({Key? key}) : super(key: key);

  @override
  State<AssignmentLogin> createState() => _AssignmentLoginState();
}

class _AssignmentLoginState extends State<AssignmentLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const Text('Sample App'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Center(child: Text('TutorialKart',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue

                ),
              )),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Center(child: Text('Sign in',
                style: TextStyle(
                    fontSize: 22,
                    // fontWeight: FontWeight.w600,
                    // color: Colors.blue

                ),
              )),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'User Name',
                  // border: InputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide:const BorderSide(width: 2, color: Colors.grey),
                    // <-- SEE HERE
                      borderRadius: BorderRadius.circular(10.0)
                )),
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                        borderSide:const BorderSide(width: 2, color: Colors.grey),
                      // borderSide: BorderSide(width: 3, color: Colors.greenAccent), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(10.0)
                    )),
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Center(child: Text('Forgot Password',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue
                ),
              )),
            ),
            
            ElevatedButton(
                onPressed: (){}, 
                child: SizedBox(
                  width: MediaQuery.of(context).size.width*0.87,
                  child:const Padding(
                    padding:  EdgeInsets.fromLTRB(0, 12, 0, 12),
                    child:  Center(
                      child:  Text('Login', style: TextStyle(
                        fontSize: 23
                      ),),
                    ),
                  ),
                )
            ),

            Container(
                padding: const EdgeInsets.all(10),
                child:  Center(
                  child: RichText(
                    text: const TextSpan(
                        text: 'Does not have an account?',
                        style: TextStyle(
                            color: Colors.black, fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(text: ' Sign in',
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              // recognizer: TapGestureRecognizer()
                              //   ..onTap = () {
                              //     // navigate to desired screen
                              //   }
                          )
                        ]
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
