// ignore_for_file: public_member_api_docs, sort_constructors_first
import "package:flutter/material.dart";
import 'package:google_forms_clone/widgets/form_items/boolean_form.dart';
import 'package:google_forms_clone/widgets/form_items/dropdown_form.dart';
import 'package:google_forms_clone/widgets/form_items/image_form.dart';

import 'package:google_forms_clone/widgets/form_items/multiple_choice_form.dart';
import 'package:google_forms_clone/widgets/form_items/text_form.dart';

class FormItem extends StatelessWidget {
  final int index;
  final Map<String, dynamic> formData;
  const FormItem({
    Key? key,
    required this.index,
    required this.formData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return formData["type"].toString() == "multiple_choice"
        ? MultipleChoiceForm(
            index: index + 1,
            title: formData["title"],
            choices: formData["properties"]["choices"])
        : formData["type"].toString() == "dropdown"
            ? DropdownForm(
                index: index + 1,
                title: formData["title"],
                choices: formData["properties"]["choices"])
            : formData["type"].toString() == "yes_no"
                ? BooleanForm(index: index + 1, title: formData["title"])
                : formData["type"].toString() == "picture_choice"
                    ? ImageForm(index: index + 1, title: formData["title"])
                    : TextForm(
                        index: index + 1,
                        title: formData["title"],
                      );
  }
}
