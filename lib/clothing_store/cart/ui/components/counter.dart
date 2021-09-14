part of '../../../clothing_store.dart';

class _Counter extends StatelessWidget {
  final _labelWidth = 40.0;
  final _buttonWidth = 32.0;

  final Function(int value) newValue;
  final int currentValue;

  /// ![](https://user-images.githubusercontent.com/47568606/132992347-ed171740-e244-42c4-8341-8ddea0670b87.png)
  const _Counter({
    required this.newValue,
    required this.currentValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: _AppColor.background,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        children: [
          SizedBox(
            width: _buttonWidth,
            child: RawMaterialButton(
                child: SvgPicture.asset('assets/icons/minus.svg'),
                onPressed: () {
                  final value = currentValue - 1;
                  newValue(value);
                }),
          ),
          Container(
            width: _labelWidth,
            color: _AppColor.background,
            child: Center(
              child: Text(
                '$currentValue',
                style: const TextStyle(
                  color: _AppColor.onBackground,
                ),
              ),
            ),
          ),
          SizedBox(
            width: _buttonWidth,
            child: RawMaterialButton(
                child: SvgPicture.asset('assets/icons/plus.svg'),
                onPressed: () {
                  final value = currentValue + 1;
                  newValue(value);
                }),
          ),
        ],
      ),
    );
  }
}
