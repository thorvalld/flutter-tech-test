import 'package:flutter/cupertino.dart';

class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class HasErrorStateWidget extends StatelessWidget {
  const HasErrorStateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class HasFailedDStateWidget extends StatelessWidget {
  const HasFailedDStateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
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
    return Container();
  }
}


