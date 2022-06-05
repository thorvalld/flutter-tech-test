import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tech_test/services/api_call.dart';
import 'package:flutter_tech_test/ui/widgets/shift_card.dart';
import 'package:flutter_tech_test/ui/widgets/state_widgets.dart';
import 'package:flutter_tech_test/utils/app_strings.dart';

import 'shift_details.dart';

class ShiftScreen extends StatefulWidget {
  const ShiftScreen({Key? key}) : super(key: key);

  @override
  State<ShiftScreen> createState() => _ShiftScreenState();
}

class _ShiftScreenState extends State<ShiftScreen> {
  final APIServices _apiServices = APIServices();

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
                return const LoadingStateWidget();
              }else if(snapshot.connectionState == ConnectionState.done){
                if(snapshot.hasData){
                  return Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(AppStrings.shiftScreenListSub1, style: TextStyle(color: Colors.blueGrey, fontSize: 12),)
                          ],
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                      ),
                      const SizedBox(height: 14,),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(CupertinoIcons.rectangle_on_rectangle_angled, color: Colors.blueAccent.withOpacity(.6), size: 32,)
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                            const SizedBox(height: 8,),
                            Row(
                              children: const [
                                Text(AppStrings.noShiftToday, style: TextStyle(color: Colors.grey, fontSize: 12),)
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                      ),
                      const SizedBox(height: 22,),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(AppStrings.shiftScreenListSub2, style: TextStyle(color: Colors.blueGrey, fontSize: 12),)
                          ],
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                      ),
                      const SizedBox(height: 8,),
                      ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: snapshot.data!.isEmpty ? 3 : snapshot.data!.length,
                          itemBuilder: (context, index){
                            return InkWell(
                                onTap: (){
                                  Navigator.push(context, CupertinoPageRoute(builder: (context) => ShiftDetails(
                                    company: snapshot.data![index]["company"],
                                    date: snapshot.data![index]["start_at"],
                                    hourlyRate: snapshot.data![index]["buy_price"],
                                    bonusRate: snapshot.data![index]["bonus"].toString(),
                                    position: snapshot.data![index]["post_name"],
                                  )));
                                },
                                child: ShiftCard(
                                  employer: snapshot.data![index]["company"],
                                  startDate: snapshot.data![index]["start_at"],
                                  position: snapshot.data![index]["post_name"],
                                  hourlyRate: snapshot.data![index]["buy_price"],
                                  startEnd: "N/A",
                                  bonusRate: snapshot.data![index]["bonus"].toString(),
                                ));
                          }),
                    ],
                  );
                }else if(!snapshot.hasData){
                  return const EmptyStateWidget();
                } else {
                  return const HasErrorStateWidget();
                }
              }else{
                return const HasFailedDStateWidget();
              }
            }
          ),
          const SizedBox(height: 80,)
        ],
      ),
    );
  }
}
