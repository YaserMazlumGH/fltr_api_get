class User {
  final int? id;
  final String? name;
  final String? userName;
  final String? email;
  //final Adress? adress;
  final String? phone;
  final String? website;
  //final Company? company;

  const User(
      {required this.id,
      required this.name,
      required this.userName,
      required this.email,
      //required this.adress,
      //required this.company,
      required this.phone,
      required this.website});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      userName: json['userame'],
      email: json['email'],
      //adress: json['address'],
      //company: json['company'],
      phone: json['phone'],
      website: json['website'],
    );
  }
}/* 

class Adress {
  final String? street;
  final String? suite;
  final String? city;
  final String? zipcode;
  final Geo? geo;

  const Adress({required this.street, required this.suite, required this.city, required this.zipcode, required this.geo});

  factory Adress.fromJson(Map<String, dynamic> json) {
    return Adress(
      city: json['city'],
      geo: json['geo'],
      street: json['street'],
      suite: json['suite'],
      zipcode: json['zipcode'],
    );
  }
}

class Geo {
  final String lat;
  final String lng;

  const Geo({required this.lat, required this.lng});

  factory Geo.fromJson(Map<String, dynamic> json) {
    return Geo(lat: json['lat'], lng: json['lng']);
  }
}

class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  const Company({required this.name, required this.catchPhrase, required this.bs});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(name: json['name'], catchPhrase: json['catchPhrase'], bs: json['bs']);
  }
}
 */