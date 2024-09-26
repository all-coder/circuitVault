import 'package:flutter/material.dart';
import './screens/home.dart';


void main()
{
  runApp(App());
}


class App extends StatelessWidget{
  const App({super.key});
  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home(),
    );
  }
}