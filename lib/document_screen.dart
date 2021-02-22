import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
class Document_Screen extends StatefulWidget {
  @override
  _Document_ScreenState createState() => _Document_ScreenState();
}

class _Document_ScreenState extends State<Document_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         // appBar: AppBar(
         //   title: Text("Documents"),
         // ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        color: Colors.blueAccent,
          child: Column(
            children: [
               Container(
                 height: 250,
                 child: Column(
                   children: [
                     SizedBox(height: 50,),
                     Padding(
                       padding: const EdgeInsets.only(left:30,right: 30),
                       child: Container(
                           width: MediaQuery.of(context).size.width,
                           height: 30,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Icon(Icons.arrow_back,color: Colors.white,),
                               Icon(Icons.clear,color: Colors.white,),

                             ],
                           )
                       ),
                     ),

                     Padding(
                       padding: const EdgeInsets.all(50),
                       child: Container(
                         width: MediaQuery.of(context).size.width,
                         child: Row(
                           children: [
                             Expanded(child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Text("DOCUMENTS",
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 30,
                                     fontWeight: FontWeight.bold,
                                   ),),
                                 SizedBox(height: 05),
                                 Text("All Documents",
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 25,
                                     fontWeight: FontWeight.w400,
                                   ),)
                               ],
                             ),flex: 5,),
                             Expanded(child:Row(
                               children: [
                                 Container(

                                   decoration: BoxDecoration(

                                       color: Colors.white,
                                       border: Border.all(
                                         color: Colors.white,
                                       ),
                                       borderRadius: BorderRadius.all(Radius.circular(50))
                                   ),
                                   child: Icon(Icons.add,color: Colors.blueAccent,),
                                   height: 65,
                                   width: 65,
                                 ),
                               ],
                             ),flex: 2,),
                           ],
                         )
                       ),
                     )
                   ],
                 ),
               ),
              Expanded(

                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(60),
                      topLeft: Radius.circular(60),
                    ),),

                  child:  Padding(
                    padding: const EdgeInsets.only(top: 25,left: 45,right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("yesterday",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),),
                        SizedBox(height: 25),
                        Expanded(
                          child: ListView(
                            children: [
                              filemaker("File_Document","DOCX","25 DEC"),
                              filemaker("File_Document","DOCX","25 DEC"),
                              filemaker("File_Document","DOCX","25 DEC"),
                              filemaker("File_Document","DOCX","25 DEC"),
                              filemaker("File_Document","DOCX","25 DEC")
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child:  RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14.0),
                                side: BorderSide(color: Colors.blueAccent)),
                            onPressed: () {},
                            color: Colors.blueAccent,
                            textColor: Colors.white,
                            child: Text("VIEW ALL DOCS".toUpperCase(),
                                style: TextStyle(fontSize: 14)),
                          ),

                        ),
                        SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }

  Widget filemaker(String name1,String name2,String price){
    return Column(
      children: [
    Container(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,

      children: [
        Expanded(child:Container(

          decoration: BoxDecoration(

              color: Colors.blueAccent,
              border: Border.all(
                color: Colors.blueAccent,
              ),
              borderRadius: BorderRadius.all(Radius.circular(50))
          ),
          child: Icon(Icons.attach_file,color: Colors.white,),
          height: 60,
          width: 60,
        ),flex: 5,),
        Expanded(child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text(name2,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),),
                Text(name1,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),

              ],
            ),
          ),
        ),flex: 15,),
        Expanded(child: Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Text(price,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ],
          ),
        ),flex: 10,),

      ],
    ),
    ),
        Divider(),
      ],
    );
  }
}
