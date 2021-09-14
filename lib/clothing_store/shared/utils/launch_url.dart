part of '../../clothing_store.dart';

void launchURL(url) async {
  await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}
