import "package:flutter/material.dart";
import 'package:google_forms_clone/widgets/option.dart';

class MultipleChoiceForm extends StatelessWidget {
  final int index;
  final String title;
  final List<dynamic> choices;
  const MultipleChoiceForm({
    Key? key,
    required this.index,
    required this.title,
    required this.choices,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
              SizedBox(
                width: size.width * 0.7,
                child: Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemBuilder: (context, index) => Option(
                optionId: (index + 1).toString(),
                optionName: choices[index]["label"].toString(),
              ),
              itemCount: choices.length,
            ),
          ),
        ],
      ),
    );
  }
}
