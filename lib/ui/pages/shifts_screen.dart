import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tech_test/services/api_call.dart';
import 'package:flutter_tech_test/ui/widgets/shift_card.dart';
import 'package:flutter_tech_test/utils/app_strings.dart';

import 'shift_details.dart';

class ShiftScreen extends StatefulWidget {
  const ShiftScreen({Key? key}) : super(key: key);

  @override
  State<ShiftScreen> createState() => _ShiftScreenState();
}

class _ShiftScreenState extends State<ShiftScreen> {
  final APIServices _apiServices = APIServices();
  List _items = List.empty(growable: true);

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
          FutureBuilder<List<dynamic>>(
            future: _apiServices.readJson(),
            builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.waiting){
                //loading
                return const Text('loading A');
              }else if(snapshot.connectionState == ConnectionState.done){
                //check data
                if(snapshot.hasData){
                  return ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: snapshot.data!.isEmpty ? 3 : snapshot.data!.length,
                      itemBuilder: (context, index){
                        return InkWell(
                            onTap: (){
                              Navigator.push(context, CupertinoPageRoute(builder: (context) => const ShiftDetails()));
                            },
                            child: ShiftCard(
                              employer: snapshot.data![index]["company"],
                              startDate: snapshot.data![index]["start_at"],
                              position: snapshot.data![index]["post_name"],
                              hourlyRate: snapshot.data![index]["buy_price"],
                              startEnd: snapshot.data![index]["- - -"],
                            ));
                      });
                }else if(snapshot.hasError){
                  return const Text('has err');
                } else {
                  return const Text('loading B');
                }
              }else{
                //oops
                return const Text('oops');
              }
            }
          ),
          const SizedBox(height: 80,)
        ],
      ),
    );
  }
}
