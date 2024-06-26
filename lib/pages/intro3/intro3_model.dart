import '/flutter_flow/flutter_flow_util.dart';
import 'intro3_widget.dart' show Intro3Widget;
import 'package:flutter/material.dart';

class Intro3Model extends FlutterFlowModel<Intro3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
