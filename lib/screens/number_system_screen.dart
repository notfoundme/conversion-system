import 'package:conversion_system/utils/binary_to_decimal.dart';
import 'package:flutter/material.dart';

class NumberSystemScreen extends StatefulWidget {
  NumberSystemScreen({super.key});

  @override
  State<NumberSystemScreen> createState() => _NumberSystemScreenState();
}

class _NumberSystemScreenState extends State<NumberSystemScreen> {
  TextEditingController controller = TextEditingController();
  int convertedNumber = 24;
  bool selectedType = true; // false= binary to decimal, true = vv

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[100],
        leading: const Icon(Icons.abc),
        title: const Text("Number Conversion System"),
      ),
      body: Column(children: [
        numberInputBox(),


        Row(
          children: [
            Row(
              children: [
                Radio<bool>(
                  value: true,
                  groupValue: selectedType,
                  onChanged: (bool? value) {
                    selectedType = value!;
                    setState(() {
                      
                    });
                  },
                ),
                const Text("Binary"),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Row(
              children: [
                Radio<bool>(
                  value: false,
                  groupValue: selectedType,
                  onChanged: (bool? value) {
                    selectedType = value!;
                    setState(() {
                      
                    });
                  },
                ),
                const Text("Decimal"),
              ],
            ),
          ],
        ),
       
       SizedBox(
          height: 70,
          child: Text(
            convertedNumber.toString(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

    






        GestureDetector(
          onTap: () {
            String x = controller.text;
            if(selectedType==false){
              String decimalNo = binaryToDecimal(x);
              convertedNumber = int.parse(decimalNo);
              setState(() {
                
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.deepPurple),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Convert",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Column numberInputBox() {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple)),
              label: Text("Enter Number"),
            ),
          ),
        ),
      ],
    );
  }

  

 

}
