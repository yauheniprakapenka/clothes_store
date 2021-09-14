part of '../../../../clothing_store.dart';

class _ProfileTile extends StatelessWidget {
  final Widget icon;
  final String title, value;
  final VoidCallback onPressed;

  /// ![](https://user-images.githubusercontent.com/47568606/132898923-e119d993-5cc8-4638-b76d-8c2e3e06264a.png)
  const _ProfileTile({
    required this.icon,
    required this.value,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: Colors.white,
      height: 48,
      child: RawMaterialButton(
        onPressed: () => onPressed(),
        child: Row(
          children: [
            icon,
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: _AppColor.onBackground,
                ),
              ),
            ),
            Text(
              value,
              style: TextStyle(
                  color: _AppColor.onBackground.withOpacity(0.7),
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(width: 12),
            Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: _AppColor.onBackground.withOpacity(0.7),
            ),
          ],
        ),
      ),
    );
  }
}
