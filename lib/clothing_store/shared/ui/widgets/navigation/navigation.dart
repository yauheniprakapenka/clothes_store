part of '../../../../clothing_store.dart';

class _Navigation extends StatelessWidget {
  final String title;
  final bool hasBackButton;

  const _Navigation({
    required this.title,
    this.hasBackButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: _AppSize.navigationHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: _AppShadow.shadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 48,
            child: hasBackButton
                ? IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: _AppColor.onBackground,
                      size: 24,
                    ),
                  )
                : null,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: _AppColor.onBackground,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
