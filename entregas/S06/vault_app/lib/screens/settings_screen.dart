import 'package:flutter/material.dart';

/// Pantalla 5: configuracion de la app.
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  static const String route = '/settings';

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Configuracion')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          children: [
            _BoxTile(
              icon: Icons.upload_outlined,
              label: 'Exportar base de datos',
              onTap: () {},
            ),
            const SizedBox(height: 12),
            _BoxTile(
              icon: Icons.download_outlined,
              label: 'Importar base de datos',
              onTap: () {},
            ),
            const SizedBox(height: 24),
            SwitchListTile(
              value: true,
              onChanged: (_) {},
              title: const Text('Seguridad biometrica'),
              subtitle: const Text('Entrar con huella o rostro'),
              secondary: const Icon(Icons.fingerprint),
            ),
            ListTile(
              leading: const Icon(Icons.key_outlined),
              title: const Text('Cambiar contrasena maestra'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.lock_clock_outlined),
              title: const Text('Bloqueo automatico'),
              subtitle: const Text('Despues de 1 minuto'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
            const SizedBox(height: 24),
            Text(
              'Vault 1.0.0',
              textAlign: TextAlign.center,
              style: TextStyle(color: scheme.outline),
            ),
          ],
        ),
      ),
    );
  }
}

class _BoxTile extends StatelessWidget {
  const _BoxTile({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: scheme.outlineVariant),
        ),
        child: Row(
          children: [
            Icon(icon, size: 28),
            const SizedBox(width: 16),
            Text(
              label,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}