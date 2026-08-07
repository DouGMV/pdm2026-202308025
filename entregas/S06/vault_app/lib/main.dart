import 'package:flutter/material.dart';

import 'screens/login_screen.dart';
import 'screens/accounts_screen.dart';
import 'screens/account_details_screen.dart';
import 'screens/add_account_screen.dart';
import 'screens/settings_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const VaultApp());
}

class VaultApp extends StatelessWidget {
  const VaultApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vault',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      initialRoute: LoginScreen.route,
      routes: {
        LoginScreen.route: (_) => const LoginScreen(),
        AccountsScreen.route: (_) => const AccountsScreen(),
        AccountDetailsScreen.route: (_) => const AccountDetailsScreen(),
        AddAccountScreen.route: (_) => const AddAccountScreen(),
        SettingsScreen.route: (_) => const SettingsScreen(),
      },
    );
  }
}