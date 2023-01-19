// ignore_for_file: public_member_api_docs, sort_constructors_first
import "package:flutter/material.dart";

import 'package:google_forms_clone/widgets/form_item.dart';

class FormsList extends StatefulWidget {
  final int itemCount;
  final List<dynamic> formResponse;
  const FormsList({
    Key? key,
    required this.itemCount,
    required this.formResponse,
  }) : super(key: key);

  @override
  State<FormsList> createState() => _FormsListState();
}

class _FormsListState extends State<FormsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.itemCount,
      itemBuilder: (context, index) {
        return FormItem(
          index: index,
          formData: widget.formResponse[index],
        );
      },
    );
  }
}
