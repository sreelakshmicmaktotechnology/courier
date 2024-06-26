import '/flutter_flow/flutter_flow_util.dart';
import 'intro_widget.dart' show IntroWidget;
import 'package:flutter/material.dart';

class IntroModel extends FlutterFlowModel<IntroWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
