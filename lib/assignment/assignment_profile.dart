import 'package:flutter/material.dart';

class AssignmentProfile extends StatefulWidget {
  const AssignmentProfile({Key? key}) : super(key: key);

  @override
  State<AssignmentProfile> createState() => _AssignmentProfileState();
}

class _AssignmentProfileState extends State<AssignmentProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Edit Profile',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4169e1)),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(120)),
                      border: Border.all(
                          width: 5.0,
                          // assign the color to the border color
                          color: const Color(0xff4169e1)),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmU5qNVMrDWLipxOiQP_liOmFePXFA_9AXzw&usqp=CAU',

                          // fit: BoxFit.cover,
                        ),
                        fit: BoxFit.cover,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            color: Colors.white,
                            child: const SizedBox(
                              width: 50,
                              height: 50,
                              child: Icon(
                                Icons.edit,
                                color:  Color(0xff4169e1),
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.width*0.9,
                  // height: 300,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children:const [
                      Text('Name', style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w500,),),
                       ExpansionTile(
                        title: Text(
                         'Test Test',
                          style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                        // children: <Widget>[
                        //   ListTile(
                        //     title: Text(
                        //       'items.description',
                        //       style: TextStyle(fontWeight: FontWeight.w700),
                        //     ),
                        //   )
                        // ],
                      ),
                    ],
                  ),
                ),
                // Expansion Tile
                // const ExpansionTile(
                //   title: Text('ExpansionTile 1'),
                //   // subtitle: Text('Trailing expansion arrow icon'),
                //   children: <Widget>[
                //     ListTile(title: Text('This is tile number 1')),
                //   ],
                // ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.9,
                  // height: 300,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children:const [
                      Text('Phone', style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w500,),),
                      ExpansionTile(
                        title: Text(
                          '(208) 206-5039',
                          style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                        // children: <Widget>[
                        //   ListTile(
                        //     title: Text(
                        //       'items.description',
                        //       style: TextStyle(fontWeight: FontWeight.w700),
                        //     ),
                        //   )
                        // ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.9,
                  // height: 300,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children:const [
                      Text('Email', style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w500,),),
                      ExpansionTile(
                        title: Text(
                          'test.test@gmail.com',
                          style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                        // children: <Widget>[
                        //   ListTile(
                        //     title: Text(
                        //       'items.description',
                        //       style: TextStyle(fontWeight: FontWeight.w700),
                        //     ),
                        //   )
                        // ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.width*0.9,
                  // height: 300,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children:const [
                      Text('Tell Us About Yourself', style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w500,),),
                      ExpansionTile(
                        title: Text(
                          'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, specimen book',
                          style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                        // children: <Widget>[
                        //   ListTile(
                        //     title: Text(
                        //       'items.description',
                        //       style: TextStyle(fontWeight: FontWeight.w700),
                        //     ),
                        //   )
                        // ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
