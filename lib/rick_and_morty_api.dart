import 'dart:convert';
import 'package:http/http.dart' as http;

class RickAndMortyApi {
  final String charactersUrl;
  final String locationsUrl;
  final String episodesUrl;

  RickAndMortyApi({
    required this.charactersUrl,
    required this.locationsUrl,
    required this.episodesUrl,
  });

  Future<String> fetchData(String url) async {
    final response = await http.get(Uri.parse(url));
    return response.body;
  }

  dynamic decodeJson(String json) {
    return jsonDecode(json);
  }
}
