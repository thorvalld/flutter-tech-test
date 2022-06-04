import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tech_test/utils/app_strings.dart';

class ShiftDetails extends StatefulWidget {
  const ShiftDetails({Key? key}) : super(key: key);

  @override
  State<ShiftDetails> createState() => _ShiftDetailsState();
}

class _ShiftDetailsState extends State<ShiftDetails> {
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
              ),
              const SizedBox(height: 12,),
              const Text('Lorem Ipsum Dolor Sit.', style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w700),),
              const SizedBox(height: 32,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('Today', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),)
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
                        label: Text('Work', style: TextStyle(color: Colors.grey.shade600,),)),
                    const SizedBox(width: 14,),
                    const Text('14÷\$/H', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
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
                title: const Text('This is a mockup address, Quebec, QC', style: TextStyle(color: Colors.black87,),),
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
                title: const Text('Bonus au travailleur: +3\$/H', style: TextStyle(color: Colors.black87,),),
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
                    Text('Gregorie Kovlaks', style: TextStyle(color: Colors.black87,),),
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
          margin: const EdgeInsets.symmetric(horizontal: 16,),
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
