import 'package:flutter/material.dart';

/// Pantalla 4: formulario para anadir una cuenta.
class AddAccountScreen extends StatelessWidget {
  const AddAccountScreen({super.key});

  static const String route = '/add-account';

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Anadir cuenta')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: [
              const SizedBox(height: 8),
              Text(
                'Datos de la cuenta',
                style: text.titleMedium?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 24),
              _Field(label: 'Sitio', hint: 'ejemplo.com'),
              const SizedBox(height: 20),
              _Field(label: 'Usuario', hint: 'tu usuario o correo'),
              const SizedBox(height: 20),
              _Field(label: 'Contrasena', hint: '********', obscure: true),
              const SizedBox(height: 28),
              Row(
                children: [
                  Text(
                    'Activar 2FA',
                    style: text.titleMedium
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  const Spacer(),
                  IconButton(
                    tooltip: 'Escanear codigo QR',
                    iconSize: 36,
                    icon: const Icon(Icons.qr_code_2),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 40),
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
            ],
          ),
        ),
      ),
    );
  }
}

class _Field extends StatelessWidget {
  const _Field({
    required this.label,
    required this.hint,
    this.obscure = false,
  });

  final String label;
  final String hint;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context)
              .textTheme
              .labelLarge
              ?.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 8),
        TextField(
          obscureText: obscure,
          decoration: InputDecoration(hintText: hint),
        ),
      ],
    );
  }
}