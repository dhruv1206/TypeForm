// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import "package:flutter/material.dart";
import 'package:google_forms_clone/utils.dart';

class ImageForm extends StatefulWidget {
  final int index;
  final String title;
  const ImageForm({
    Key? key,
    required this.index,
    required this.title,
  }) : super(key: key);

  @override
  State<ImageForm> createState() => _ImageFormState();
}

class _ImageFormState extends State<ImageForm> {
  List<File> images = [];

  void selectImages() async {
    var newImages = await pickImages();
    for (var image in newImages) {
      images.add(image);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 100,
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
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length + 1,
              itemBuilder: (context, index) {
                return index == images.length
                    ? IconButton(
                        onPressed: selectImages,
                        icon: const Icon(
                          Icons.add,
                        ),
                      )
                    : SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.file(
                          File(images[index].path),
                        ),
                      );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
