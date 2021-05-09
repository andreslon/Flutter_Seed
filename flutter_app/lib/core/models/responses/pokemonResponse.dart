import 'package:uuid/uuid.dart';

class Pokemon {
  String id = Uuid().v4().toString();
  String name;
  String url;
  String get image =>
      'https://img.pokemondb.net/sprites/sun-moon/normal/${this.name}-f.png';

  Pokemon({this.name, this.url});

  Pokemon.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}
