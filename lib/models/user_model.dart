class UserModel {
  var name;
  var email;
  var password;
  var userType;
  // null == unassigned.
  // admin == 1
  // manager == 2
  // biller == 3
  // customer == 4

  UserModel({this.name, this.email, this.password});

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    
    return data;
  }
}
