import "package:flutter/material.dart";
import 'package:google_forms_clone/widgets/forms_list.dart';
import "./form_service.dart";

class FormsScreen extends StatefulWidget {
  const FormsScreen({super.key});

  @override
  State<FormsScreen> createState() => _FormsScreenState();
}

class _FormsScreenState extends State<FormsScreen> {
  @override
  void initState() {
    super.initState();
    initPrefs();
  }

  List<dynamic> response = [];
  Future<void> initPrefs() async {
    response = await FormService().getFormData();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Forms"),
        actions: [
          IconButton(
            onPressed: () {
              initPrefs();
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: FormsList(itemCount: response.length, formResponse: response),
    );
  }
}
