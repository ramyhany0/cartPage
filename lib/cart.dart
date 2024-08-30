import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  Cart({super.key});
  List<String> names = <String>[
    "Iphone 14",
    "Iphone 14",
    "Iphone 14",
    "Iphone 14",
    "Iphone 14",
  ];
  List<String> image = <String>[
    "assets/images/iphone.jpg",
    "assets/images/iphone.jpg",
    "assets/images/iphone.jpg",
    "assets/images/iphone.jpg",
    "assets/images/iphone.jpg",
  ];
  List<int> price = <int>[100, 200, 300, 400, 500];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 127, 209, 129),
            title: Text("Cart"),
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
                          height: 140,
                          child: Row(
                            children: [
                              Container(
                                width: 140,
                                child: Image.asset(
                                  image[index],
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      names[index],
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "\$" + price[index].toString(),
                                      style: TextStyle(
                                          color: Color(0xFF0eb256),
                                          fontStyle: FontStyle.italic),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: 140,
                                      height: 40,
                                      color: Colors.grey.shade200,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.add,
                                            color: Colors.black,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "1",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 20),
                                            child: Icon(
                                              Icons.minimize,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ));
                    },
                    itemCount: names.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 15,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "TOTAL",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("\$1500",
                            style: TextStyle(
                                fontSize: 23, color: Color(0xFF0eb256))),
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.all(20),
                        height: 80,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF0eb256)),
                            onPressed: () {},
                            child: Text(
                              "CheckOut",
                              style: TextStyle(fontSize: 20),
                            ))),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
