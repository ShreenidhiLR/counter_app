import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count =0;   //calling
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text("counter app"),

      ),
      body: Center(
        child: Text('Count: $count',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: incrementAction,
        label: Text('Increment'),
      ),
    );
  }
  void incrementAction(){
    setState(() {
      count = count+1;
    });
  } //method


}
