import 'package:flutter/material.dart';
import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TreeController controller = TreeController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Family Tree',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Family Tree"),
          actions: [
            IconButton(
                onPressed: () {
                  controller.collapseAll();
                  setState(() {});
                },
                icon: const Icon(Icons.expand_less)),
            IconButton(
                onPressed: () {
                  controller.expandAll();
                  setState(() {});
                },
                icon: const Icon(Icons.expand_more)),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(

            height: 800,

            child: Column(

              children: [
                Container(
                  color: Colors.amber,
                  child: TreeView(
    nodes: [
      TreeNode(
    content: Text("ZOMATO"),

    children: [
      TreeNode(content: Text('Hotels'),

      children: [
                  TreeNode(content: Text('Veg'),
                  children: [TreeNode(content: Text('Kani Veg hotels'),

                  ),
                    TreeNode(content: Text('SDR Veg hotels')),]),


      ]
      ),],
      // TreeNode(
      // content: Text("Parents2"),

    // TreeNode(content: Text('Parents'),
    // children: [
    // TreeNode(content: Text('amma appa'),
    // children: [TreeNode(content: Text('brothers sisters')),
    // TreeNode(content: Text('daughter')),]),
    //
    //
    // ]),



    )
    ]),
                ),
                Container(
                  color: Colors.redAccent,
                  child: TreeView(
                      nodes: [
                        TreeNode(
                          content: Text("ZOMATO"),
                          children: [
                            TreeNode(content: Text('Hotels'),
                                children: [
                                  TreeNode(content: Text('Non Veg'),
                                      children: [TreeNode(content: Text('Kani  hotels'),

                                      ),
                                        TreeNode(content: Text('SDR  hotels')),]),


                                ]
                            ),],
                          // TreeNode(
                          // content: Text("Parents2"),

                          // TreeNode(content: Text('Parents'),
                          // children: [
                          // TreeNode(content: Text('amma appa'),
                          // children: [TreeNode(content: Text('brothers sisters')),
                          // TreeNode(content: Text('daughter')),]),
                          //
                          //
                          // ]),



                        )
                      ]),
                ),
                Container(
                  color: Colors.greenAccent,
                  child: TreeView(
                      nodes: [
                        TreeNode(
                          content: Text("ZOMATO"),
                          children: [
                            TreeNode(content: Text('Hotels'),
                                children: [
                                  TreeNode(content: Text('Non Veg & VEg'),
                                      children: [TreeNode(content: Text('Kani Non Veg & VEg hotels'),

                                      ),
                                        TreeNode(content: Text('SDR Non Veg & VEg hotels')),]),


                                ]
                            ),],
                          // TreeNode(
                          // content: Text("Parents2"),

                          // TreeNode(content: Text('Parents'),
                          // children: [
                          // TreeNode(content: Text('amma appa'),
                          // children: [TreeNode(content: Text('brothers sisters')),
                          // TreeNode(content: Text('daughter')),]),
                          //
                          //
                          // ]),



                        )
                      ]),
                ),
              ],
            ),
          ),
        )

    ));

  }}
              // treeController: controller,

