import 'package:flutter/material.dart';
import 'package:flutter_inputs/date_time_picker.dart';
import 'package:flutter_inputs/stepper_kullanimi.dart';
//import 'package:flutter_inputs/diger_form_elemanlari.dart';
//import 'package:flutter_inputs/text_form_fuild_kullanimi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.orange),
      home: StepperOrnek(),
    );
  }
}

class TextFieldIslemleri extends StatefulWidget {
  const TextFieldIslemleri({Key? key}) : super(key: key);

  @override
  _TextFieldIslemleriState createState() => _TextFieldIslemleriState();
}

class _TextFieldIslemleriState extends State<TextFieldIslemleri> {
  late TextEditingController _emailController;
  late FocusNode _focusNode;
  int maxLineCount = 1;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: 'ahmet@ahmet.com');
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        if (_focusNode.hasFocus) {
          maxLineCount = 3;
        } else {
          maxLineCount = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form İşlemleri"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              focusNode: _focusNode,
              controller: _emailController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              autofocus: true,
              maxLines: maxLineCount,
              maxLength: 20,
              onChanged: (String deger) {
                if (deger.length > 3) {
                  setState(() {
                    _emailController.value = TextEditingValue(
                      text: deger,
                      selection: TextSelection.collapsed(offset: deger.length),
                    );
                  });
                }
              },
              cursorColor: Colors.pink,
              decoration: InputDecoration(
                labelText: 'Label Text',
                hintText: 'Email giriniz',
                prefixIcon: Icon(Icons.email),
                suffix: Icon(Icons.emoji_emotions),
                filled: true,
                fillColor: Colors.orange,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
              ),
              onSubmitted: (String deger) {
                print("submit " + deger);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_emailController.text),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _emailController.text = 'islamoktay34@gmail.com';
          });
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
