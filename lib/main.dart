import 'package:crypto_app/crypto_app.dart';
import 'package:crypto_app/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceLocator().setupServiceLocator();
  runApp(const CryptoApp());
}
