import 'package:flutter/material.dart';

class Exercise2 extends StatefulWidget {
  @override
  _Exercise2State createState() => _Exercise2State();
}

class _Exercise2State extends State<Exercise2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exercise 2')),
      body: Stack(
        children: [
          Container(
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                          color: Colors.white,
                                          child: Column(
                                            children: [
                                              Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    color: Colors.grey,
                                                  )),
                                              Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    color: Colors.orange,
                                                  )),
                                              Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    color: Colors.blue[700],
                                                  )),
                                              Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    color: Colors.pink,
                                                  ))
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                          color: Colors.white,
                                          child: Column(
                                            children: [
                                              Expanded(
                                                  flex: 3,
                                                  child: Container(
                                                    color: Colors.blue[300],
                                                  )),
                                              Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    color: Colors.white,
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                            flex: 1,
                                                            child: Container(
                                                              color:
                                                                  Colors.green,
                                                            )),
                                                        Expanded(
                                                            flex: 1,
                                                            child: Container(
                                                              color:
                                                                  Colors.yellow,
                                                            ))
                                                      ],
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.black,
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.yellow,
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.white,
                              ))
                        ],
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.pink,
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            color: Colors.pink,
                          )),
                          Container(
                            width: 16,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.pink,
                    ))
              ],
            ),
          ),
          Positioned(
              left: 50,
              bottom: 150,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.grey.withOpacity(0.5),
              ))
        ],
      ),
      floatingActionButton: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(30)),
        child: Icon(
          Icons.play_arrow,
          color: Colors.white,
        ),
      ),
    );
  }
}
