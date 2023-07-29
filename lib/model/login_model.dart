class Beegains {
  final bool? success;
  final String? message;
  final Data? data;

  Beegains({
    this.success,
    this.message,
    this.data,
  });

  factory Beegains.fromJson(Map<String, dynamic> json) {
    return Beegains(
      success: json['success'],
      message: json['message'],
      data: json['data'] != null ? Data.fromJson(json['data']) : null,
    );
  }
}

class Data {
  final User? user;
  final String? token;

  Data({
    this.user,
    this.token,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      user: json['user'] != null ? User.fromJson(json['user']) : null,
      token: json['token'],
    );
  }
}

class User {
  final int? id;
  final String? username;
  final int? employeeId;
  final String? userTypeId;
  final Employee? employee;
  final Usertype? usertype;

  User({
    this.id,
    this.username,
    this.employeeId,
    this.userTypeId,
    this.employee,
    this.usertype,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
      employeeId: json['employee_id'],
      userTypeId: json['user_type_id'],
      employee: json['employee'] != null ? Employee.fromJson(json['employee']) : null,
      usertype: json['usertype'] != null ? Usertype.fromJson(json['usertype']) : null,
    );
  }
}

class Employee {
  final int? id;
  final String? employeeName;
  final String? employeeCode;
  final int? franchiseId;
  final Franchise? franchise;

  Employee({
    this.id,
    this.employeeName,
    this.employeeCode,
    this.franchiseId,
    this.franchise,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json['id'],
      employeeName: json['employee_name'],
      employeeCode: json['employee_code'],
      franchiseId: json['franchise_id'],
      franchise: json['franchise'] != null ? Franchise.fromJson(json['franchise']) : null,
    );
  }
}

class Franchise {
  final int? id;
  final String? franchiseeCode;

  Franchise({
    this.id,
    this.franchiseeCode,
  });

  factory Franchise.fromJson(Map<String, dynamic> json) {
    return Franchise(
      id: json['id'],
      franchiseeCode: json['franchisee_code'],
    );
  }
}

class Usertype {
  final int? id;
  final String? name;

  Usertype({
    this.id,
    this.name,
  });

  factory Usertype.fromJson(Map<String, dynamic> json) {
    return Usertype(
      id: json['id'],
      name: json['name'],
    );
  }
}
