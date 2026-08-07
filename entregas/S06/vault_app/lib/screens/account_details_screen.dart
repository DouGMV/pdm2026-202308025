import 'package:flutter/material.dart';

/// Pantalla 3: detalle de una cuenta.
class AccountDetailsScreen extends StatelessWidget {
  const AccountDetailsScreen({super.key});

  static const String route = '/account-details';

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Detalles de tu cuenta')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: scheme.primaryContainer,
                  child: Icon(
                    Icons.public,
                    size: 48,
                    color: scheme.onPrimaryContainer,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Sitio: YouTube.com', style: text.titleMedium),
                        const SizedBox(height: 6),
                        Text('Usuario: Dou21', style: text.titleMedium),
                        const SizedBox(height: 6),
                        Text('Contrasena: *****', style: text.titleMedium),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        tooltip: 'Editar',
                        icon: const Icon(Icons.edit_outlined),
                        onPressed: () {},
                      ),
                      IconButton(
                        tooltip: 'Mostrar contrasena',
                        icon: const Icon(Icons.visibility_outlined),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: scheme.outlineVariant),
                ),
                child: Row(
                  children: [
                    Text(
                      '2FA: 589 416',
                      style: text.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.5,
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.timer_outlined),
                    const SizedBox(width: 8),
                    IconButton(
                      tooltip: 'Copiar codigo',
                      icon: const Icon(Icons.copy_all_outlined),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: FilledButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Aceptar'),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cancelar'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}