part of '../../../clothing_store.dart';

class _DottedLine extends StatelessWidget {
  final double height;

  const _DottedLine({
    this.height = 1,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final constraintWidth = constraints.constrainWidth();
        const doteWidth = 8.0;
        final doteHeight = height;
        final doteCount = (constraintWidth / (2 * doteWidth)).floor();
        
        return Flex(
          children: List.generate(doteCount, (_) {
            return SizedBox(
              width: doteWidth,
              height: doteHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
