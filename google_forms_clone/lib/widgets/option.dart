// ignore_for_file: public_member_api_docs, sort_constructors_first
import "package:flutter/material.dart";

class Option extends StatelessWidget {
  final String optionId;
  final String optionName;
  const Option({
    Key? key,
    required this.optionId,
    required this.optionName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueAccent.shade100.withOpacity(0.1),
        border: Border.all(color: Colors.black26, width: 1.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: SizedBox(
        width: size.width * 0.4,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 30,
                width: 30,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26, width: 1.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      optionId,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
              ),
              child: Text(
                optionName,
              ),
            )
          ],
        ),
      ),
    );
  }
}
