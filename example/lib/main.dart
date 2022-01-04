import 'package:flutter/material.dart';
import 'package:iosish_indicator/iosish_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController textController = TextEditingController();
  final TextEditingController durationController = TextEditingController();

  Position position = Position.top;

  @override
  void dispose() {
    super.dispose();
    textController.dispose();
    durationController.dispose();
  }

  Widget textField(TextEditingController controller, String hint) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Theme.of(context).disabledColor, width: 1.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Theme.of(context).primaryColor, width: 1.0)),
          labelText: hint,
          hintStyle: const TextStyle(color: Colors.grey),
          isDense: true,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iosish Indicator'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              textField(textController, 'Title'),
              textField(durationController, 'Duration'),
              Row(
                children: [
                  Radio(
                    value: Position.top,
                    groupValue: position,
                    onChanged: (value) {
                      setState(() {
                        position = value as Position;
                      });
                    },
                  ),
                  const Text('Top'),
                  Radio(
                    value: Position.bottom,
                    groupValue: position,
                    onChanged: (value) {
                      setState(() {
                        position = value as Position;
                      });
                    },
                  ),
                  const Text('Bottom'),
                ],
              ),

              // Popup Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text('Pop Up'),
                  onPressed: () {
                    Iosish(context).createIndicator(
                      title: textController.text,
                      position: position,
                      duration: Duration(
                        seconds: int.parse(
                          durationController.text.toString(),
                        ),
                      ),
                    );
                  },
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text('Another Examples'),
              ),

              // Example 1
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text('Pop Up FingerPrint Message'),
                  onPressed: () {
                    Iosish(context).createIndicator(
                      title: "Unlocked Using Fingerprint",
                      position: Position.bottom,
                      duration: const Duration(seconds: 3),
                      child: const Icon(Icons.fingerprint_outlined,
                          color: Colors.lightGreen),
                    );
                  },
                ),
              ),

              // Example 2
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text('Pop Up Logged In Message'),
                  onPressed: () {
                    Iosish(context).createIndicator(
                      title: "Welcome Back, admin",
                      position: position,
                      duration: const Duration(seconds: 4),
                      child: const CircleAvatar(radius: 12),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
