import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../../l10n/locale_manager.dart';
import '../theme/theme.dart';
import '/domain/model/furniture.dart';
import '/domain/model/colors.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
