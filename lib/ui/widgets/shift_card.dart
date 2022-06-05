import 'package:flutter/material.dart';
import 'package:flutter_tech_test/utils/app_strings.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class ShiftCard extends StatelessWidget {
  final String? employer;
  final String? startDate;
  final String? position;
  final String? hourlyRate;
  final String? startEnd;
  final String? bonusRate;
  const ShiftCard({Key? key, this.employer, this.startDate, this.position, this.hourlyRate, this.startEnd, this.bonusRate}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //Convert String time and date to DateTime object
    String timestampToReadable(String providedTimestamp) {
      initializeDateFormatting('fr');
      DateTime? formatted = DateTime.tryParse(providedTimestamp);
      String readableDate = DateFormat.MMMMEEEEd('fr').format(formatted!);
      return readableDate.toUpperCase();
    }

    //Check if the date given is today, if yes return true
    bool isToday(String providedTimestamp){
      final now = DateTime.now();
      DateTime? formatted = DateTime.tryParse(providedTimestamp);
      final today = DateTime(now.year, now.month, now.day);
      final toCheck = DateTime(formatted!.year, formatted.month, formatted.day);
      return today == toCheck;
    }

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
              Text(isToday(startDate!) ? AppStrings.todayStr : timestampToReadable(startDate!), style: TextStyle(color: isToday(startDate!) ? Colors.redAccent : Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 12),)
            ],
          ),
          const SizedBox(height: 8,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Chip(
                backgroundColor: Colors.grey.shade200,
                  label: Text('$position', style: TextStyle(color: Colors.grey.shade600, fontSize: 12),)),
              const SizedBox(width: 8,),
              RichText(
                text: TextSpan(
                    text: '$hourlyRate\$/H ',
                    style: const TextStyle(
                        color: Colors.black87, fontSize: 12),
                    children: <TextSpan>[
                      TextSpan(text: '+ $bonusRate\$/H',
                          style: const TextStyle(
                              color: Colors.teal, fontSize: 12),
                      )
                    ]
                ),
              ),
              const Spacer(),
              const Text('16:00-22:00', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 12),),
            ],
          ),
        ],
      ),
    );
  }
}
