// ignore_for_file: public_member_api_docs, sort_constructors_first
import "package:flutter/material.dart";

class DropdownForm extends StatefulWidget {
  final int index;
  final String title;
  final List<dynamic> choices;
  const DropdownForm({
    Key? key,
    required this.index,
    required this.title,
    required this.choices,
  }) : super(key: key);

  @override
  State<DropdownForm> createState() => _DropdownFormState();
}

class _DropdownFormState extends State<DropdownForm> {
  String currVal = "";
  @override
  Widget build(BuildContext context) {
    if (widget.choices.isNotEmpty) {
      currVal = widget.choices[0]["label"].toString();
    }
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                widget.index.toString(),
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.arrow_right_alt,
                  size: 18,
                ),
              ),
              Text(
                widget.title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          if (widget.choices.isNotEmpty)
            SizedBox(
              height: 50,
              child: DropdownButton(
                borderRadius: BorderRadius.circular(10),
                value: currVal,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: widget.choices.map(
                  (var items) {
                    return DropdownMenuItem(
                      value: items["label"],
                      child: Text(items["label"]),
                    );
                  },
                ).toList(),
                onChanged: (value) {},
              ),
            ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
