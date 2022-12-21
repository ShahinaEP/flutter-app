import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final _controllerUserName = TextEditingController();
  final _controllerPassword = TextEditingController();
  bool isObscure = true;
  bool showInformation = false;
  loginInputData() {
    if (_formKey.currentState!.validate()) {
      print(_controllerUserName.text);
      print(_controllerPassword.text);
      setState(() {
        showInformation = !showInformation;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          leading: const Icon(Icons.menu),
          title: const Text('Home'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Stack (
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.teal,
                          height: 100,
                          width: 100,
                          child:const Center(
                            child: Text('Stack1',
                                 style: TextStyle(
                                   fontSize: 17,
                                   color:  Colors.white,
                                 ),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.teal,
                          height:100,
                          width: 100,
                          child:const Center(
                            child: Text('Stack2',
                              style: TextStyle(
                                fontSize: 17,
                                color:  Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.teal,
                          height: 100,
                          width: 100,
                          child:const Center(
                            child: Text('Stack3',
                              style: TextStyle(
                                fontSize: 17,
                                color:  Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const Text('Login Section', style: TextStyle(
                fontSize: 30,
                color: Colors.cyan,
                fontWeight: FontWeight.w700
              ),),
              const SizedBox(
                width: 300,
                child:  Divider(
                  thickness: 3.9,
                  color: Colors.red,
                ),
              ),
              //Login Section
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      // Add TextFormFields and ElevatedButton here.
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         const Text('User name',style: TextStyle(
                           fontSize: 20
                         )),
                         const Text(':',style: TextStyle(
                             fontSize: 20
                         )),
                         SizedBox(
                           width: 250,
                           child: TextFormField(
                             controller: _controllerUserName,
                             style: const TextStyle(
                               fontSize: 20
                             ),
                             validator: (value){
                               if (value!.length < 5) {
                                 return "Please enter at list 5 dist";
                               }
                               return null;
                             },
                           ),
                         )
                       ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Password',style: TextStyle(
                              fontSize: 20
                          )),
                          const Text(':',style: TextStyle(
                              fontSize: 20
                          )),
                          SizedBox(
                            width: 250,
                            child: TextFormField(
                              controller: _controllerPassword,
                              obscureText: isObscure,
                              decoration: InputDecoration(
                                labelStyle:
                                const TextStyle(color: Colors.black),
                                hintStyle: const TextStyle(
                                    fontSize: 13, color: Colors.black),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isObscure = !isObscure;
                                    });
                                  },
                                  icon: Icon(isObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                  iconSize: 15,
                                ),
                              ),
                              validator: (value){
                                if (value!.length < 5) {
                                  return "Please enter at list 5 dist";
                                }
                                return null;
                              },
                            ),

                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                onPressed: (){
                                  loginInputData();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.teal,
                                ),
                                child: const Text('Login')
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30,),

              //AlertDialog
              TextButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Exit App'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                         Divider(
                          color: Color(0xFF18c3cb),
                        ),

                             Text(
                              "Are you sure, ",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight:
                                  FontWeight
                                      .w600),
                            ),
                            Text(
                              "You want to exit the app?",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight:
                                  FontWeight
                                      .w600),
                            ),

                      ],
                    ),

                    // const Text('AlertDialog description'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Yes'),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.teal,

                        ),
                        child: const Text('Yes',style: TextStyle(
                            color: Colors.white
                        ),),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'No'),
                        style:TextButton.styleFrom(
                          backgroundColor: Colors.teal,
                        ) ,
                        child: const Text('No', style:  TextStyle(
                          color: Colors.white
                        ),),
                      ),
                    ],
                  ),
                ),
                child: const Text('Show Dialog',style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 20
                ),),
              )


            ],
          ),
        ),
      ),
    );
  }
}
