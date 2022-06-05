import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/app_strings.dart';

class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: const [
              Icon(CupertinoIcons.rectangle_on_rectangle_angled, color: Colors.blueAccent, size: 32,)
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(height: 8,),
          Row(
            children: const [
              Text(AppStrings.emptyStateStr, style: TextStyle(color: Colors.grey, fontSize: 12),)
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16),
    );
  }
}

class HasErrorStateWidget extends StatelessWidget {
  const HasErrorStateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: const [
              Icon(CupertinoIcons.xmark, color: Colors.redAccent, size: 32,)
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(height: 8,),
          Row(
            children: const [
              Text(AppStrings.errorStateStr, style: TextStyle(color: Colors.grey, fontSize: 12),)
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16),
    );
  }
}

class HasFailedDStateWidget extends StatelessWidget {
  const HasFailedDStateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: const [
              Icon(CupertinoIcons.arrow_2_circlepath, color: Colors.redAccent, size: 32,)
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(height: 8,),
          Row(
            children: const [
              Text(AppStrings.failedStateStr, style: TextStyle(color: Colors.grey, fontSize: 12),)
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16),
    );
  }
}

class LoadingStateWidget extends StatefulWidget {
  const LoadingStateWidget({Key? key}) : super(key: key);

  @override
  State<LoadingStateWidget> createState() => _LoadingStateWidgetState();
}

class _LoadingStateWidgetState extends State<LoadingStateWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(32),
          height: 32,
          width: 32,
          child: const CircularProgressIndicator(),
        ),
      ],
    );
  }
}

