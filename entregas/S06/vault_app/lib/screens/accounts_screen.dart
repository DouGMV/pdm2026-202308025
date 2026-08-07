import 'package:flutter/material.dart';

import '../widgets/account_card.dart';
import 'account_details_screen.dart';
import 'add_account_screen.dart';
import 'settings_screen.dart';

/// Pantalla 2: listado de cuentas guardadas.
class AccountsScreen extends StatelessWidget {
  const AccountsScreen({super.key});

  static const String route = '/accounts';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tus cuentas'),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 4, 16, 12),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar cuenta',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 90),
                children: [
                  AccountCard(
                    site: 'YouTube.com',
                    user: 'Dou21',
                    code: '589 416',
                    isFavorite: true,
                    onTap: () => Navigator.pushNamed(
                      context,
                      AccountDetailsScreen.route,
                    ),
                  ),
                  AccountCard(
                    site: 'GitHub.com',
                    user: 'dou-dev',
                    code: '204 771',
                    onTap: () => Navigator.pushNamed(
                      context,
                      AccountDetailsScreen.route,
                    ),
                  ),
                  AccountCard(
                    site: 'Banco.gt',
                    user: 'dou.perez',
                    code: '913 052',
                    onTap: () => Navigator.pushNamed(
                      context,
                      AccountDetailsScreen.route,
                    ),
                  ),
                  AccountCard(
                    site: 'Steam',
                    user: 'Dou21',
                    code: '446 130',
                    onTap: () => Navigator.pushNamed(
                      context,
                      AccountDetailsScreen.route,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Anadir cuenta',
        onPressed: () => Navigator.pushNamed(context, AddAccountScreen.route),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        onDestinationSelected: (index) {
          if (index == 2) {
            Navigator.pushNamed(context, SettingsScreen.route);
          }
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Cuenta',
          ),
          NavigationDestination(
            icon: Icon(Icons.star_border),
            selectedIcon: Icon(Icons.star),
            label: 'Favoritos',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: 'Ajustes',
          ),
        ],
      ),
    );
  }
}