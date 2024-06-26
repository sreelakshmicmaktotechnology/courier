import '/flutter_flow/flutter_flow_util.dart';
import 'intro2_widget.dart' show Intro2Widget;
import 'package:flutter/material.dart';

class Intro2Model extends FlutterFlowModel<Intro2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
