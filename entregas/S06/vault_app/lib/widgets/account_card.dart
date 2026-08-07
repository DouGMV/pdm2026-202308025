import 'package:flutter/material.dart';

/// Tarjeta de una cuenta dentro del listado.
class AccountCard extends StatelessWidget {
  const AccountCard({
    super.key,
    required this.site,
    required this.user,
    required this.code,
    this.isFavorite = false,
    this.onTap,
  });

  final String site;
  final String user;
  final String code;
  final bool isFavorite;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(color: scheme.outlineVariant),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: scheme.primaryContainer,
                child: Text(
                  site.isEmpty ? '?' : site[0].toUpperCase(),
                  style: TextStyle(
                    color: scheme.onPrimaryContainer,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      site,
                      style: text.titleMedium
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 2),
                    Text(user, style: text.bodySmall),
                    Text('2FA: $code', style: text.bodySmall),
                  ],
                ),
              ),
              IconButton(
                tooltip: 'Favorito',
                icon: Icon(isFavorite ? Icons.star : Icons.star_border),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}