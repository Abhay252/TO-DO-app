import 'package:flutter/material.dart';
import 'package:to_do/utility/buttons.dart';

class DialogBox extends StatelessWidget {

  final controller ;
  VoidCallback onsave;
  VoidCallback onCancel;


  DialogBox({super.key,
  required this.controller,
  required this.onsave,
  required this.onCancel,
  });

  

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add new Task"
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Buttons(text: 'Save', onPressed: onsave),
                const SizedBox(
                  width: 40,
                ),
                Buttons(text: 'Cancel', onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.yellow[200],
    );
  }
}
