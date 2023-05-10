import 'dart:math';

import 'package:flutter/material.dart';
import 'package:skeleton_builder/skeleton_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(
          // primarySwatch: Colors.blue,
          ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   print(_cardKey?.currentContext?.size);
    // });

    return Scaffold(
      appBar: AppBar(),
      body: SkeletonBuilder(
        child: false
            ? CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => Text('Hello'),
                      childCount: 3,
                    ),
                  ),
                  SliverPadding(
                    padding: EdgeInsets.all(23),
                    sliver: SliverAppBar(
                      // backgroundColor: Colors.transparent,
                      title: Text("Hello"),
                    ),
                  ),
                  SliverPadding(
                    padding: EdgeInsets.all(23),
                    sliver: SliverAppBar(
                      // backgroundColor: Colors.transparent,
                      title: Text("Hello"),
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  // const Padding(
                  //   padding: EdgeInsets.all(20.0),
                  //   child: Text(
                  //     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  //     style: TextStyle(fontSize: 20),
                  //   ),
                  // ),
                  // Card(
                  //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  //   child: const Text("Hello"),
                  // ),
                  // if (false)
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: ElevatedButton(onPressed: () {}, child: const Text('Hello')),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: DecoratedBox(
                  //     decoration: BoxDecoration(
                  //       border: Border.all(),
                  //     ),
                  //     child: Row(
                  //       children: const [
                  //         Text('Hello'),
                  //         SizedBox(
                  //           width: 20,
                  //           height: 100,
                  //         ),
                  //         Text("World"),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   child: Text('Click me'),
                  // ),
                  // // if (false)
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.all(20),
                      itemCount: 1,
                      itemBuilder: (ctx, index) {
                        return Container(
                          decoration: BoxDecoration(
                          color: Colors.red.shade100,
                            borderRadius: BorderRadius.circular(16)
                          ),
                          margin: EdgeInsets.symmetric(vertical: 4),
                          child: const ListTile(
                            title: Text('Im a title'),
                            subtitle: Text('Im a subtitle'),
                            trailing: Icon(Icons.ac_unit),
                          ),
                        );
                        return Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            children: [
                              AspectRatio(
                                aspectRatio: 2 / 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 12),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 12),
                                      child: Container(
                                        width: 65,
                                        height: 65,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Hello there that is kinda long',
                                          textAlign: TextAlign.end,
                                          textDirection: TextDirection.rtl,
                                        ),
                                        SizedBox(height: 8),
                                        Text("Im a subtitle"),
                                      ],
                                    )),
                                    const SizedBox(width: 20)
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}