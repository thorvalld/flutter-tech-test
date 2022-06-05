import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tech_test/utils/app_strings.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class ShiftDetails extends StatefulWidget {
  final String? company;
  final String? position;
  final String? date;
  final String? hourlyRate;
  final String? bonusRate;
  const ShiftDetails({Key? key, this.position, this.date, this.hourlyRate, this.company, this.bonusRate}) : super(key: key);

  @override
  State<ShiftDetails> createState() => _ShiftDetailsState();
}

class _ShiftDetailsState extends State<ShiftDetails> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.black87,
                        child: Icon(CupertinoIcons.arrow_left, color: Colors.white,),
                      ),
                    )
                  ],
                ),
              ),
              CircleAvatar(
                radius: 56,
                backgroundColor: Colors.grey.shade200,
                foregroundImage: const AssetImage("assets/images/stock.jpg"),
              ),
              const SizedBox(height: 12,),
              Text('${widget.company}', style: const TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w700),),
              const SizedBox(height: 32,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(isToday(widget.date!) ? AppStrings.todayStr : timestampToReadable(widget.date!), style: TextStyle(color: isToday(widget.date!) ? Colors.redAccent : Colors.black87, fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              const SizedBox(height: 18,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Chip(
                        backgroundColor: Colors.grey.shade200,
                        labelPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                        label: Text('${widget.position}', style: TextStyle(color: Colors.grey.shade600,),)),
                    const SizedBox(width: 14,),
                    Text('${widget.hourlyRate}\$/H', style: const TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
                    const Spacer(),
                    const Text('16:00-22:00', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              const SizedBox(height: 18,),
              ListTile(
                onTap: null,
                leading: Container(
                  padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(64)),
                      border: Border.all(width: 1, color: Colors.black87, style: BorderStyle.solid)
                    ),
                    child: const Icon(CupertinoIcons.location, color: Colors.black87,)),
                title: const Text('48 Rue sous le Fort, Quebec, QC', style: TextStyle(color: Colors.black87,),),
                subtitle: const Text('G1K 4G9', style: TextStyle(color: Colors.black87,),),
              ),
              ListTile(
                onTap: null,
                leading: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(64)),
                        border: Border.all(width: 1, color: Colors.black87, style: BorderStyle.solid)
                    ),
                    child: const Icon(CupertinoIcons.money_dollar, color: Colors.black87,)),
                title: Text('Bonus au travailleur: +${widget.bonusRate}\$/H', style: const TextStyle(color: Colors.black87,),),
              ),
              ListTile(
                onTap: null,
                leading: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(64)),
                        border: Border.all(width: 1, color: Colors.black87, style: BorderStyle.solid)
                    ),
                    child: const Icon(CupertinoIcons.pause, color: Colors.black87,)),
                title: const Text('Pause de 30 minutes.', style: TextStyle(color: Colors.black87,),),
              ),
              ListTile(
                onTap: null,
                leading: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(64)),
                        border: Border.all(width: 1, color: Colors.black87, style: BorderStyle.solid)
                    ),
                    child: const Icon(Icons.local_parking, color: Colors.black87,)),
                title: const Text('Pause de 30 minutes.', style: TextStyle(color: Colors.black87,),),
              ),
              ListTile(
                onTap: null,
                leading: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(64)),
                        border: Border.all(width: 1, color: Colors.black87, style: BorderStyle.solid)
                    ),
                    child: const Icon(CupertinoIcons.person_alt, color: Colors.black87,)),
                title: const Text('Pantalon noir, chemise noir', style: TextStyle(color: Colors.black87,),),
              ),
              const SizedBox(height: 22,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16,),
                child: Row(
                  children: const [
                    Text(AppStrings.detailScreenResponsableLabel, style: TextStyle(color: Colors.grey, fontSize: 13),),
                  ],
                ),
              ),
              const SizedBox(height: 6,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16,),
                child: Row(
                  children: const [
                    Text('Gregorie Kovlaks', style: TextStyle(color: Colors.black87, fontSize: 18),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        left: false,
        right: false,
        bottom: true,
        child: Container(
          margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: CupertinoButton(
            onPressed: (){},
            color: Colors.cyan,
            borderRadius: const BorderRadius.all(Radius.circular(64)),
            child: const Text('POSTULER', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}
