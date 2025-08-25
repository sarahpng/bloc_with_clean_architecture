import 'package:bloc_clean_coding/config/components/internet_exception_widget.dart';
import 'package:bloc_clean_coding/config/components/loading_widget.dart';
import 'package:bloc_clean_coding/data/exceptions/app_exceptions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          throw NoInternetException('No Intetnet Exception');
        },
      ),
      body: Column(
        children: [
          Center(child: LoadingWidget(height: 40)),
          // RoundButton(title: 'hello world', onTap: () {}),
          InternetExceptionWidget(onPress: () {}),
        ],
      ),
    );
  }
}
