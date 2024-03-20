import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  fetchJokes();
}

Future<void> fetchJokes() async {
  final response = await http.get(Uri.parse('https://api.chucknorris.io/jokes/random')); //api til að sækja efnið

  if (response.statusCode == 200) {
    Jokes joke = Jokes.fromJson(jsonDecode(response.body));
    print(joke.value);
  } else {
    throw Exception('Vesen!');
  }
}

class Jokes {
  String? iconUrl;
  String? id;
  String? url;
  String? value;

  Jokes({
    this.iconUrl,
    this.id,
    this.url,
    this.value
  });


  factory Jokes.fromJson(Map<String, dynamic> json) {
    return Jokes(
      iconUrl: json['icon_url'],
      id: json['id'],
      url: json['url'],
      value: json['value'],
    );
  }
}
