class AuthModel {
  final String userName;
  final String email;
  final String gender;
  final String firstName;
  final String lastName;
  final String image;
  final String token;
  AuthModel(
      {required this.userName,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.image,
      required this.token, required this.gender});

  factory AuthModel.fromJson(dynamic json) => AuthModel(
    gender:json['gender'],
      userName: json['username'],
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      image: json['image'],
      token: json['token'],

  );

  dynamic toJson() => {
        'username': userName,
        'email': email,
        'firstName': firstName,
        'lastName': lastName,
        'image': image,
      };
}
