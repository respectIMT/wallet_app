import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/assets/asset_index.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key, required this.error}) : super(key: key);

  final String error;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppTheme.colors.background,
      child: Center(
        child: Text(
          error,
          style: AppTheme.data.textTheme.bodyMedium,
        ),
      ),
    );
  }
}
