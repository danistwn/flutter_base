class user {
  int id;
  String email;
  String first_name;
  String last_name;
  String avatar;

  user(this.id, this.email, this.first_name, this.last_name, this.avatar);

  factory user.fromJson(Map<String, dynamic> json) {
    return user(json['id'], json['email'], json['first_name'],
        json['last_name'], json['avatar']);
  }
}
