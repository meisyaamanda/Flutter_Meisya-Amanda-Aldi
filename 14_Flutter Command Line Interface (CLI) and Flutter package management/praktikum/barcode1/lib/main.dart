import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const barcode(),
    );
  }
}

class barcode extends StatelessWidget {
  const barcode({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Barcode'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BarcodeWidget(
                  data: 'Alterra Academy',
                  barcode: Barcode.aztec(),
                  height: 150,
                  width: 200,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text('Alterra Academy'),
                SizedBox(
                  height: 20,
                ),
                BarcodeWidget(
                  data: 'Flutter Asik',
                  barcode: Barcode.aztec(),
                  height: 150,
                  width: 200,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text('Flutter Asik'),
                SizedBox(
                  height: 20,
                ),
                BarcodeWidget(
                  data: 'Meisya Amanda Aldi',
                  barcode: Barcode.aztec(),
                  height: 150,
                  width: 200,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text('Meisya Amanda Aldi'),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
