part of '../navbar.dart';

class _Actions extends StatelessWidget {
  final Map<String, dynamic> action;
  final VoidCallback onPressed;
  const _Actions({
    Key? key,
    required this.action,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentRoute = NavigationHistoryObserver().top;
    final path = currentRoute!.settings.name;

    final isSelected = path == action['path'];

    return Padding(
      padding: Space.h2!,
      child: InkWell(
        onTap: onPressed,
        child: Text(
          action['label'],
          style: AppText.b2!.copyWith(
            color: isSelected ? AppTheme.c!.primary : null,
            fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
            letterSpacing: 1.0,
          ),
        ),
      ),
    );
  }
}
