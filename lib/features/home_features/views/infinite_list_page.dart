import 'package:flutter/material.dart';
import 'package:mesurale/features/home_features/views/home_page.dart';

class InfiniteListPage extends StatelessWidget {
  final Color color;

  const InfiniteListPage({required this.color, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController controller =
        InheritedDataProvider.of(context).scrollController;
    return HomePage();
  }
}

class InheritedDataProvider extends InheritedWidget {
  final ScrollController scrollController;

  const InheritedDataProvider({
    required Widget child,
    required this.scrollController,
  }) : super(child: child);

  @override
  bool updateShouldNotify(InheritedDataProvider oldWidget) =>
      scrollController != oldWidget.scrollController;

  static InheritedDataProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedDataProvider>()!;
}
