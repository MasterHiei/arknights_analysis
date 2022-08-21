import 'package:url_launcher/url_launcher_string.dart';

Future<bool> launchUrl(String urlString) async {
  if (await canLaunchUrlString(urlString)) {
    return launchUrlString(urlString);
  }
  return false;
}
