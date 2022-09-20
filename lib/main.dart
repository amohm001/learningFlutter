// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  String? word = listSample[0]["amir"];
  print(word);
  runApp(const MyApp());
}



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String query = '';
  List<String> searchResults= [];
  @override
  Widget build(BuildContext context) {
    const title = 'Basic List';
    final List<Map<String, String>> listSample = [
      {
        "ditamo": "male, example: he's name is ditamo",
        "mekya": "female, Example: Her name is mekya" ,
        "amir": "amir: \n meaning: male \n Example: He's gender is male",
        "eman": "female"
      }
    ];
    //
    void initState() {
      super.initState();


    }

    _search(String text) {
      searchResults.clear();
      listSample[0].forEach((key, value) {
        if (key.contains(text) || value.contains(text))
          searchResults.add(value);
      });
    }
    TextEditingController _controller = TextEditingController();
    String? word = listSample[0]["amir"];

    return MaterialApp(
        title: "Dictionary",
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Dictionary")),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child:
                Container(
                    width: double.infinity,
                    height: 40,
                    color: Colors.white,
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Search for something',
                        prefixIcon: Icon(Icons.search),
                      ),
                      onChanged:  _search,

                    )


                )
            //     new Expanded(
            // child: searchResults.length!=  0 || _controller.text.isNotEmpty ?
            // new ListView.builder(
            //     itemCount: searchResults.length,
            //   itemBuilder: (context, i){
            //
            //   }
            // )))

                ),
                  // IconButton(
                  //     icon: Icon(
                  //         Icons.search,
                  //         color: Colors.red
                  //     ), onPressed: () {  },
                  // )

            ),


          body: Container(
              child: Center(
                  child: Text(
                    listSample[0].keys.toString(),
                    textAlign: TextAlign.center,)

              )

          )


            // child: Text(listSample[0]["amir"]!, textAlign: TextAlign.center,)



        // appBar: AppBar(
        //   title: const Text(title),
        // ),
        // body: ListView(
        //   children: <Widget>[
        //     Container(
        //     color: Colors.white,
        //     child: Center(child: Text(listSample[0]["amir"]!, textAlign: TextAlign.center,)),
        //     ),
        //
        //   ],
         ),
    );

  }
}

final List<Map<String, String>> listSample = [
  {
    "amir": "meaning: male \n Example: He's gender is male",
    "eman": "female"
  }
  ];


