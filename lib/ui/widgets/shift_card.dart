import 'package:flutter/material.dart';

class ShiftCard extends StatelessWidget {
  const ShiftCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 22, top: 22),
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text('Lorem Ipsum Dolor', style: TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w500),)
            ],
          ),
          const SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text('Today', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),)
            ],
          ),
          const SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Chip(
                backgroundColor: Colors.grey.shade200,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                  label: Text('Work', style: TextStyle(color: Colors.grey.shade600,),)),
              const SizedBox(width: 8,),
              const Text('14÷\$/H + 5÷\$/H', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
              const Spacer(),
              const Text('16:00-22:00', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
            ],
          ),
        ],
      ),
    );
  }
}
