import 'package:flutter/material.dart';

class CardTitleDescEdit extends StatelessWidget {
  CardTitleDescEdit({super.key, this.title = '', this.desc = '', this.goTo});

  String title;
  String desc;
  final goTo;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 27, top: 13, right: 27),
        width: double.infinity,
        height: 120,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title.toString(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    goTo();
                  },
                  child: Icon(Icons.edit),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 33),
              child: Text(
                desc.toString(),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            )
          ],
        ),
      ),
    );
  }
}
