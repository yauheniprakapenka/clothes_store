part of '../../../../clothing_store.dart';

/// ![](https://user-images.githubusercontent.com/47568606/132990863-c7871e93-9507-4014-9f28-81100b7d184c.png)
class _AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _AppColor.background,
      body: SafeArea(
        child: Column(
          children: [
            const _Navigation(title: 'О нас'),
            Expanded(
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  _buildStoreLogo(context),
                  const SizedBox(height: 24),
                  const Center(
                    child: Text(
                      _ProfileStrings._shopTitle,
                      style: TextStyle(
                        fontSize: 24,
                        color: _AppColor.onBackground,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Center(
                    child: Text(
                      _ProfileStrings._shopDescription,
                      style: TextStyle(color: _AppColor.onBackground),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            _buildSocialSection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildStoreLogo(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      height: 96,
      child: const Center(
        child: Icon(
          Icons.store,
          size: 48,
          color: _AppColor.onBackground,
        ),
      ),
    );
  }

  Widget _buildSocialSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 112,
      margin: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            _ProfileStrings._socialTitle,
            style: TextStyle(
              fontSize: 17,
              color: _AppColor.onBackground,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            width: 220,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _SocialButton(
                  assetName: 'assets/icons/social/vk.png',
                  onPressed: () {
                    launchURL('https://vk.com/intervale');
                  },
                ),
                _SocialButton(
                  assetName: 'assets/icons/social/facebook.png',
                  onPressed: () {
                    launchURL('https://www.facebook.com/intervalecompany/');
                  },
                ),
                _SocialButton(
                  assetName: 'assets/icons/social/instagram.png',
                  onPressed: () {
                    launchURL('https://www.intervale.ru/');
                  },
                ),
                _SocialButton(
                  assetName: 'assets/icons/social/gmail.png',
                  onPressed: () {
                    launchURL(
                        'https://www.linkedin.com/company/intervale/mycompany/');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
