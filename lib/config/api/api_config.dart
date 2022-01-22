import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';
import 'index.dart';



@immutable
class ApiConfig {

  const ApiConfig({
    required this.base,
    required this.name,
  });

  final String base;
  final Name name;

  factory ApiConfig.fromJson(Map<String,dynamic> json) => ApiConfig(
    base: json['base'] as String,
    name: Name.fromJson(json['name'] as Map<String, dynamic>)
  );
  
  Map<String, dynamic> toJson() => {
    'base': base,
    'name': name.toJson()
  };

  ApiConfig clone() => ApiConfig(
    base: base,
    name: name.clone()
  );


  ApiConfig copyWith({
    String? base,
    Name? name
  }) => ApiConfig(
    base: base ?? this.base,
    name: name ?? this.name,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is ApiConfig && base == other.base && name == other.name;

  @override
  int get hashCode => base.hashCode ^ name.hashCode;
}

@immutable
class Name {

  const Name({
    required this.fname,
    required this.lname,
  });

  final String fname;
  final String lname;

  factory Name.fromJson(Map<String,dynamic> json) => Name(
    fname: json['fname'] as String,
    lname: json['lname'] as String
  );
  
  Map<String, dynamic> toJson() => {
    'fname': fname,
    'lname': lname
  };

  Name clone() => Name(
    fname: fname,
    lname: lname
  );


  Name copyWith({
    String? fname,
    String? lname
  }) => Name(
    fname: fname ?? this.fname,
    lname: lname ?? this.lname,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Name && fname == other.fname && lname == other.lname;

  @override
  int get hashCode => fname.hashCode ^ lname.hashCode;
}
