// Flutter web plugin registrant file.
//
// Generated file. Do not edit.
//

<<<<<<< HEAD
// ignore_for_file: type=lint

void registerPlugins() {}
=======
// @dart = 2.13
// ignore_for_file: type=lint

import 'package:firebase_auth_web/firebase_auth_web.dart';
import 'package:firebase_core_web/firebase_core_web.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void registerPlugins([final Registrar? pluginRegistrar]) {
  final Registrar registrar = pluginRegistrar ?? webPluginRegistrar;
  FirebaseAuthWeb.registerWith(registrar);
  FirebaseCoreWeb.registerWith(registrar);
  registrar.registerMessageHandler();
}
>>>>>>> af331ffad9ed45ad3eb4e8c98f21ef8767013c85
