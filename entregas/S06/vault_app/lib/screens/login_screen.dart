import 'package:flutter/material.dart';

import 'accounts_screen.dart';

/// Pantalla 1: ingreso con contrasena maestra.
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.brightness_6_outlined),
          tooltip: 'Cambiar tema',
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(flex: 3),
              Icon(
                Icons.lock_outline,
                size: 56,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 24),
              Text(
                'Ingresa tu contrasena maestra',
                textAlign: TextAlign.center,
                style: text.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 24),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Contrasena maestra'),
              ),
              const SizedBox(height: 20),
              FilledButton(
                onPressed: () => Navigator.pushReplacementNamed(
                  context,
                  AccountsScreen.route,
                ),
                child: const Text('Desbloquear'),
              ),
              const Spacer(flex: 3),
              Text(
                'Quieres acceder de otra manera?',
                textAlign: TextAlign.center,
                style: text.bodyMedium,
              ),
              const SizedBox(height: 12),
              IconButton(
                iconSize: 64,
                tooltip: 'Entrar con huella',
                icon: const Icon(Icons.fingerprint),
                onPressed: () => Navigator.pushReplacementNamed(
                  context,
                  AccountsScreen.route,
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}