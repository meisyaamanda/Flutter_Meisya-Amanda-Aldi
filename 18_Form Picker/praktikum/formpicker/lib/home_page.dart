import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime _dueDate = DateTime.now();
  final _currentDate = DateTime.now();
  Color _currentColor = Colors.purple;
  final captionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          'Create Post',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Cover',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Publish At',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () async {
                  final selectDate = await showDatePicker(
                    context: context,
                    initialDate: _currentDate,
                    firstDate: DateTime(2015),
                    lastDate: DateTime(_currentDate.year + 5),
                  );
                  if (selectDate != null) {
                    setState(() {
                      _dueDate = selectDate;
                    });
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                  child: _dueDate != null
                      ? Text(
                          DateFormat('dd-MM-yyyy').format(_dueDate),
                        )
                      : Text(
                          'dd-mm-yyyy',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Color Theme',
                style: TextStyle(fontSize: 16),
              ),
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Pick Your Color'),
                          content: BlockPicker(
                            pickerColor: _currentColor,
                            onColorChanged: (color) {
                              setState(() {
                                _currentColor = color;
                              });
                            },
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Pilih'),
                            ),
                          ],
                        );
                      });
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black),
                  ),
                  child: _currentColor != null
                      ? Row(
                          children: [
                            Text('Warna yang dipilih'),
                            CircleAvatar(
                              backgroundColor: _currentColor,
                            )
                          ],
                        )
                      : Text(
                          'Pick a color',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Caption',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: captionController,
                maxLines: 7,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
