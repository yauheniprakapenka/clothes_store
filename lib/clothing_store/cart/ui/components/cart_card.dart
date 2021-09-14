part of '../../../clothing_store.dart';

class _CartCard extends StatefulWidget {
  final _ClothesModel clothes;

  /// ![](https://user-images.githubusercontent.com/47568606/132977365-4e0f2653-4dcb-49f5-a375-d4f92557ae42.png)
  const _CartCard({
    required this.clothes,
  });

  @override
  State<_CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<_CartCard> {
  final _edgePadding = 16.0;
  final _containerHeight = 112.0;

  @override
  Widget build(BuildContext context) {
    final _imageSize = _getImageSize();

    return Container(
      padding: EdgeInsets.all(_edgePadding),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      height: _containerHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildImage(_imageSize),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildTitle(),
                        const SizedBox(height: 4),
                        _buildSize(),
                      ],
                    ),
                    const Spacer(),
                    _buildDeleteButton(),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    _buildCost(),
                    const Spacer(),
                    _Counter(
                      currentValue: 6,
                      newValue: (value) {
                        setState(() {});
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  double _getImageSize() {
    return _containerHeight - (_edgePadding * 2);
  }

  Widget _buildImage(double size) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: size,
      height: size,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Image.network(widget.clothes.imageUrl, fit: BoxFit.cover),
    );
  }

  Widget _buildCost() {
    return Text(
      '${widget.clothes.cost},00 ₽',
      maxLines: 1,
      style:
          const TextStyle(color: _AppColor.cost, fontWeight: FontWeight.w900),
    );
  }

  Widget _buildTitle() {
    return Text(
      widget.clothes.title,
      maxLines: 1,
      style: const TextStyle(
          color: _AppColor.onBackground, fontWeight: FontWeight.w900),
    );
  }

  Widget _buildSize() {
    return Text(
      '${widget.clothes.size} размер',
      maxLines: 1,
      style: const TextStyle(
        color: _AppColor.onBackground,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _buildDeleteButton() {
    return SvgPicture.asset('assets/icons/trash.svg', height: 28);
  }
}
