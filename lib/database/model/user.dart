class User {

  int id;
  String _firstName;
  String _lastName;
  String _dob;
  String _umur;
  String _email;

  User(this._firstName, this._lastName, this._dob, this._umur, this._email);

  User.map(dynamic obj) {
    this._firstName = obj["firstname"];
    this._lastName = obj["lastname"];
    this._dob = obj["dob"];
    this._umur = obj["umur"];
    this._email = obj["email"];
  }

  String get firstName => _firstName;

  String get lastName => _lastName;

  String get dob => _dob;

  String get umur => _umur;

  String get email => _email;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();

    map["firstname"] = _firstName;
    map["lastname"] = _lastName;
    map["dob"] = _dob;
    map["umur"] = _umur;
    map["email"] = _email;

    return map;
  }

  void setUserId(int id) {
    this.id = id;
  }
}
