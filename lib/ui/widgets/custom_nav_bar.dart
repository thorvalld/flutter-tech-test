import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tech_test/utils/app_strings.dart';

class BulldozerNavbar extends StatefulWidget {
  const BulldozerNavbar({Key? key}) : super(key: key);

  @override
  State<BulldozerNavbar> createState() => _BulldozerNavbarState();
}

class _BulldozerNavbarState extends State<BulldozerNavbar> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      left: false,
      right: false,
      bottom: true,
      child: Container(
        height: 64,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(64)),
        ),
        child: Row(
          children: [
            Expanded(
                child: Container(
                  height: double.maxFinite,
                  margin: const EdgeInsets.only(right: 6),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: const BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(Radius.circular(64)),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(CupertinoIcons.search, color: Colors.white, size: 24,),
                        SizedBox(width: 8,),
                        Text(AppStrings.mainScreenTabLabel_1, style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ),
                )
            ),
            CircleAvatar(
              radius: 26,
              backgroundColor: Colors.grey.shade200,
              child: const Icon(CupertinoIcons.doc_text, color: Colors.black54,),
            ),
            const SizedBox(width: 6,),
            CircleAvatar(
              radius: 26,
              backgroundColor: Colors.grey.shade200,
              child: const Icon(CupertinoIcons.person, color: Colors.black54,),
            ),
          ],
        ),
      ),
    );
  }
}
