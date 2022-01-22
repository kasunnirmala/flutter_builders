import 'dart:async';
import 'dart:convert';

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:yaml/yaml.dart';

// class APIModalBuilder extends Generator {
//   @override
//   Future<String> generate(LibraryReader library, BuildStep buildStep) async {
//     // var content = await buildStep.readAsString(
//     //     AssetId("flutter_builder_test", "assets/config/api.yaml"));
//     // var _yamlData = loadYaml(content);
//     // _yamlData.forEach((k, v) => print("Key : $k, Value : $v"));
//     return '''
//   //HI
//     ''';
//   }
// }
class APIModalBuilder extends Builder {
  @override
  Future<FutureOr<void>> build(BuildStep buildStep) async {
    AssetId inputId = buildStep.inputId;
    AssetId copy = inputId.changeExtension(".api.dart");

    var content = await buildStep.readAsString(
        AssetId("flutter_builder_test", "assets/config/api.yaml"));
    var _yamlData = loadYaml(content);
    String s = "";
    _yamlData.forEach((k, v) {
      // print("Key : $k, Value : $v");
      if (v.runtimeType is YamlMap) {
      } else {}
      print(v.runtimeType);
    });

    await buildStep.writeAsString(copy, '''
//     import 'package:json_annotation/json_annotation.dart';

// part 'test.api.g.dart';

// @JsonSerializable()
// class Person {
//   final ABC abc;
//   Person({required this.abc});
//   factory Person.fromJson(Map<String, dynamic> json) => _\$PersonFromJson(json);
//   Map<String, dynamic> toJson() => _\$PersonToJson(this);
// }

// @JsonSerializable()
// class ABC {
//   final String firstName, lastName;
//   final DateTime? dateOfBirth;
//   ABC({required this.firstName, required this.lastName, this.dateOfBirth});
//   factory ABC.fromJson(Map<String, dynamic> json) => _\$ABCFromJson(json);
//   Map<String, dynamic> toJson() => _\$ABCToJson(this);
// }
    ''');
  }

  @override
  Map<String, List<String>> get buildExtensions => {
        '.dart': ['.api.dart']
      };
}
