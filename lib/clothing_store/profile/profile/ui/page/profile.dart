part of '../../../../clothing_store.dart';

/// ![](https://user-images.githubusercontent.com/47568606/132904321-e0965ce6-ed7f-4408-8a76-e36e318217ca.png)
class _ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final iconColor = Theme.of(context).colorScheme.primary;
    final buyerCards = _BuyerCardRepository.getBuyerCards();

    return Scaffold(
      backgroundColor: _AppColor.background,
      body: Column(
        children: [
          const _Navigation(title: 'Профиль', hasBackButton: false),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const _NameSection(
                      name: 'Алеся Сидоренко', discount: 'Скидка 14%'),
                  _ProfileTile(
                    icon: Icon(Icons.person, color: iconColor),
                    title: 'Пол',
                    value: 'Женский',
                    onPressed: () {},
                  ),
                  _ProfileTile(
                    icon: Icon(Icons.calendar_today, color: iconColor),
                    title: 'День рождения',
                    value: '12.12.2020',
                    onPressed: () {},
                  ),
                  _ProfileTile(
                    icon: Icon(Icons.alternate_email, color: iconColor),
                    title: 'Email',
                    value: 'test@test.by',
                    onPressed: () {},
                  ),
                  _ProfileTile(
                    icon: Icon(Icons.smartphone, color: iconColor),
                    title: 'Номер телефона',
                    value: '+375 44 567-45-78',
                    onPressed: () {},
                  ),
                  _ProfileTile(
                    icon: Icon(Icons.feed_outlined, color: iconColor),
                    title: 'Карточки покупателя',
                    value: '${buyerCards.length}',
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        _RouteName.buyerCardPage,
                        arguments: buyerCards,
                      );
                    },
                  ),
                  _paddingBetweenItems(),
                  _ProfileTile(
                    icon: Icon(Icons.question_answer, color: iconColor),
                    title: 'Помощь',
                    value: '',
                    onPressed: () {},
                  ),
                  _ProfileTile(
                    icon: Icon(Icons.help, color: iconColor),
                    title: 'FAQ',
                    value: '',
                    onPressed: () {},
                  ),
                  _ProfileTile(
                    icon: Icon(Icons.article, color: iconColor),
                    title: 'Документы',
                    value: '',
                    onPressed: () {},
                  ),
                  _ProfileTile(
                    icon: Icon(Icons.info, color: iconColor),
                    title: 'О нас',
                    value: '',
                    onPressed: () {
                      Navigator.pushNamed(context, _RouteName.aboutPage);
                    },
                  ),
                  _paddingBetweenItems(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _paddingBetweenItems() => const SizedBox(height: 24);
}
