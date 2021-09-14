part of '../../../../clothing_store.dart';

class _NameSection extends StatelessWidget {
  final String name, discount;

  /// ![](https://user-images.githubusercontent.com/47568606/132898280-edc91a4f-b1c4-47de-b015-2508d5718df8.png)
  const _NameSection({
    required this.name,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Container(
            height: 72,
            width: 72,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Image.network(
                'https://image.shutterstock.com/image-photo/portrait-russian-woman-winter-snowy-260nw-367141592.jpg',
                fit: BoxFit.cover),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: _AppColor.onBackground,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  discount,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: _AppColor.onBackground.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
