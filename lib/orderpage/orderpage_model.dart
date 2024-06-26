import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'orderpage_widget.dart' show OrderpageWidget;
import 'package:flutter/material.dart';

class OrderpageModel extends FlutterFlowModel<OrderpageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for weight widget.
  FocusNode? weightFocusNode;
  TextEditingController? weightTextController;
  String? Function(BuildContext, String?)? weightTextControllerValidator;
  // State field(s) for measure widget.
  FocusNode? measureFocusNode;
  TextEditingController? measureTextController;
  String? Function(BuildContext, String?)? measureTextControllerValidator;
  // State field(s) for money widget.
  FocusNode? moneyFocusNode;
  TextEditingController? moneyTextController;
  String? Function(BuildContext, String?)? moneyTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    weightFocusNode?.dispose();
    weightTextController?.dispose();

    measureFocusNode?.dispose();
    measureTextController?.dispose();

    moneyFocusNode?.dispose();
    moneyTextController?.dispose();
  }
}
