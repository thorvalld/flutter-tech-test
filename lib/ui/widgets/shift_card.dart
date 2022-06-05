import 'package:flutter/material.dart';

class ShiftCard extends StatelessWidget {
  final String? employer;
  final String? startDate;
  final String? position;
  final String? hourlyRate;
  final String? startEnd;
  const ShiftCard({Key? key, this.employer, this.startDate, this.position, this.hourlyRate, this.startEnd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12, top: 22),
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
            children: [
              Text('$employer', style: const TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w500),)
            ],
          ),
          const SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('$startDate', style: const TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),)
            ],
          ),
          const SizedBox(height: 8,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Chip(
                backgroundColor: Colors.grey.shade200,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                  label: Text('$position', style: TextStyle(color: Colors.grey.shade600,),)),
              const SizedBox(width: 8,),
              Text('$hourlyRate', style: const TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
              const Spacer(),
              Text('$startEnd', style: const TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
            ],
          ),
        ],
      ),
    );
  }
}
