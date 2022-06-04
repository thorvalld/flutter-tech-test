import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tech_test/ui/widgets/shift_card.dart';
import 'package:flutter_tech_test/utils/app_strings.dart';

import 'shift_details.dart';

class ShiftScreen extends StatefulWidget {
  const ShiftScreen({Key? key}) : super(key: key);

  @override
  State<ShiftScreen> createState() => _ShiftScreenState();
}

class _ShiftScreenState extends State<ShiftScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(16,),
            child: Row(
              children: const [
                Text(AppStrings.shiftScreenTitle, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 23),),
              ],
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 18,
              itemBuilder: (context, index){
            return InkWell(
              onTap: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context) => const ShiftDetails()));
              },
                child: const ShiftCard());
          })
        ],
      ),
    );
  }
}
