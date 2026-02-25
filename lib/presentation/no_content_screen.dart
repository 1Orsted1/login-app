import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';

@RoutePage()
class NoContentScreen extends StatelessWidget {
  const NoContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoadingOverlay(isLoading: true, child: SizedBox.shrink()),
    );
  }
}
