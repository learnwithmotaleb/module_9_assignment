import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  int itemCount = 0;
var unitPrice = [
    51.00,
    30.0,
    43.0,
  ];
  double totalAmount = 0.0;

  void updateTotalAmount() {
    setState(() {

        totalAmount = unitPrice[0]+ unitPrice[1]+ unitPrice[2];


    });
  }

  void showCongratulatorySnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Congratulations! Your order has been placed.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.search),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'My Bag',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.black,
                                width: double.infinity,
                                height: 150,
                                child: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Bill_Gates_2017_%28cropped%29.jpg/330px-Bill_Gates_2017_%28cropped%29.jpg',
                                  fit: BoxFit.fill,
                                ),
                              )),
                          Expanded(
                              flex: 3,
                              child: Container(
                                width: double.infinity,
                                height: 150,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      ListTile(
                                        title: Text('Pullover'),
                                        trailing: Icon(Icons.more_vert),
                                      ),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text('Color: Black   Size: L')),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Card(
                                              child: IconButton(
                                                onPressed: () {
                                                  if (itemCount > 0) {
                                                    setState(() {
                                                      itemCount--;
                                                      updateTotalAmount();
                                                    });
                                                  }
                                                },
                                                icon: Icon(Icons.remove),
                                              ),
                                              elevation: 10,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(100)),
                                            ),
                                          ),
                                          Text('$itemCount'),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Card(
                                              child: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    itemCount++;
                                                    updateTotalAmount();
                                                  });
                                                },
                                                icon: Icon(Icons.add),
                                              ),
                                              elevation: 10,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(100)),
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 20),
                                            child: Text("${unitPrice[0]}\$"),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Card(
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.black,
                                width: double.infinity,
                                height: 150,
                                child: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Bill_Gates_2017_%28cropped%29.jpg/330px-Bill_Gates_2017_%28cropped%29.jpg',
                                  fit: BoxFit.fill,
                                ),
                              )),
                          Expanded(
                              flex: 3,
                              child: Container(
                                width: double.infinity,
                                height: 150,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      ListTile(
                                        title: Text('T-Shirt'),
                                        trailing: Icon(Icons.more_vert),
                                      ),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text('Color: Gray   Size: L')),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Card(
                                              child: IconButton(
                                                onPressed: () {
                                                  if (itemCount > 0) {
                                                    setState(() {
                                                      itemCount--;
                                                      updateTotalAmount();
                                                    });
                                                  }
                                                },
                                                icon: Icon(Icons.remove),
                                              ),
                                              elevation: 10,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(100)),
                                            ),
                                          ),
                                          Text('$itemCount'),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Card(
                                              child: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    itemCount++;
                                                    updateTotalAmount();
                                                  });
                                                },
                                                icon: Icon(Icons.add),
                                              ),
                                              elevation: 10,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(100)),
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 20),
                                            child: Text("30\$"),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Card(
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.black,
                                width: double.infinity,
                                height: 150,
                                child: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Bill_Gates_2017_%28cropped%29.jpg/330px-Bill_Gates_2017_%28cropped%29.jpg',
                                  fit: BoxFit.fill,
                                ),
                              )),
                          Expanded(
                              flex: 3,
                              child: Container(
                                width: double.infinity,
                                height: 150,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      ListTile(
                                        title: Text('Sport Dress'),
                                        trailing: Icon(Icons.more_vert),
                                      ),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text('Color: Black   Size: M')),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Card(
                                              child: IconButton(
                                                onPressed: () {
                                                  if (itemCount > 0) {
                                                    setState(() {
                                                      itemCount--;
                                                      updateTotalAmount();
                                                    });
                                                  }
                                                },
                                                icon: Icon(Icons.remove),
                                              ),
                                              elevation: 10,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(100)),
                                            ),
                                          ),
                                          Text('$itemCount'),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Card(
                                              child: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    itemCount++;
                                                    updateTotalAmount();
                                                  });
                                                },
                                                icon: Icon(Icons.add),
                                              ),
                                              elevation: 10,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(100)),
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 20),
                                            child: Text("43\$"),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                ],
              ),
                  )),
              Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                children: [
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total amount: '),
                            Text('${totalAmount.toStringAsFixed(2)}\$')

                          ],


                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(

                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(100)
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red
                        ),
                        onPressed: () {
                          showCongratulatorySnackbar();
                        },
                        child: Text('CHECK OUT'),
                      ),
                    ),
                ],
              ),
                  ))


              // Text(
              //   'Item Count: $itemCount',
              //   style: TextStyle(fontSize: 24.0),
              // ),
              // Text(
              //   'Unit Price: \$${unitPrice.toStringAsFixed(2)}',
              //   style: TextStyle(fontSize: 24.0),
              // ),
              // Text(
              //   'Total Amount: \$${totalAmount.toStringAsFixed(2)}',
              //   style: TextStyle(fontSize: 24.0),
              // ),
              // SizedBox(height: 20.0),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     IconButton(
              //       icon: Icon(Icons.remove),
              //       onPressed: () {
              //         if (itemCount > 0) {
              //           setState(() {
              //             itemCount--;
              //             updateTotalAmount();
              //           });
              //         }
              //       },
              //       iconSize: 48.0,
              //     ),
              //     IconButton(
              //       icon: Icon(Icons.add),
              //       onPressed: () {
              //         setState(() {
              //           itemCount++;
              //           updateTotalAmount();
              //         });
              //       },
              //       iconSize: 48.0,
              //     ),
              //   ],
              // ),

            ],
          ),
        ),
      ),
    );
  }
}
