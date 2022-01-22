import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/api_modal_builder.dart';

// Builder productBuilder(BuilderOptions options) =>
//     SharedPartBuilder([APIModalBuilder()], 'api');

Builder productBuilder(BuilderOptions options) => APIModalBuilder();
