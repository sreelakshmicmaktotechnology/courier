import '/flutter_flow/flutter_flow_util.dart';
import 'order03_widget.dart' show Order03Widget;
import 'package:flutter/material.dart';

class Order03Model extends FlutterFlowModel<Order03Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = const FFPlace();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks.
  Future<LatLng?> location(BuildContext context) async {
    return null;
  }
}
