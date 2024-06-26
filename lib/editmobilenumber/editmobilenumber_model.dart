import '/flutter_flow/flutter_flow_util.dart';
import 'editmobilenumber_widget.dart' show EditmobilenumberWidget;
import 'package:flutter/material.dart';

class EditmobilenumberModel extends FlutterFlowModel<EditmobilenumberWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for mobilenum widget.
  FocusNode? mobilenumFocusNode;
  TextEditingController? mobilenumTextController;
  String? Function(BuildContext, String?)? mobilenumTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    mobilenumFocusNode?.dispose();
    mobilenumTextController?.dispose();
  }
}
