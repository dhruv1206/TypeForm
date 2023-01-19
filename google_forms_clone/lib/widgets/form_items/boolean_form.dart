import "package:flutter/material.dart";
import 'package:google_forms_clone/widgets/option.dart';

class BooleanForm extends StatelessWidget {
  final int index;
  final String title;
  const BooleanForm({
    Key? key,
    required this.index,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                index.toString(),
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
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SizedBox(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemBuilder: (context, index) => Option(
                  optionId: index == 0 ? "Y" : "N",
                  optionName: index == 0 ? "Yes" : "No",
                ),
                itemCount: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
