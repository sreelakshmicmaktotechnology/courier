import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'test_model.dart';
export 'test_model.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  late TestModel _model;

  LatLng? currentUserLocationValue;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestModel());

    getCurrentUserLocation(defaultLocation: const LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                FlutterFlowTheme.of(context).primary,
              ),
            ),
          ),
        ),
      );
    }

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Builder(builder: (context) {
        final googleMapMarker = currentUserLocationValue;
        return FlutterFlowGoogleMap(
          controller: _model.googleMapsController,
          onCameraIdle: (latLng) =>
              setState(() => _model.googleMapsCenter = latLng),
          initialLocation: _model.googleMapsCenter ??=
              const LatLng(24.475212729810774, 54.37395391166255),
          markers: [
            if (googleMapMarker != null)
              FlutterFlowMarker(
                googleMapMarker.serialize(),
                googleMapMarker,
              ),
          ],
          markerColor: GoogleMarkerColor.blue,
          mapType: MapType.normal,
          style: GoogleMapStyle.standard,
          initialZoom: 14.0,
          allowInteraction: true,
          allowZoom: true,
          showZoomControls: false,
          showLocation: true,
          showCompass: false,
          showMapToolbar: false,
          showTraffic: false,
          centerMapOnMarkerTap: true,
        );
      }),
    );
  }
}
