import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderRecord extends FirestoreRecord {
  OrderRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "orderid" field.
  String? _orderid;
  String get orderid => _orderid ?? '';
  bool hasOrderid() => _orderid != null;

  // "weight" field.
  String? _weight;
  String get weight => _weight ?? '';
  bool hasWeight() => _weight != null;

  // "measurement" field.
  String? _measurement;
  String get measurement => _measurement ?? '';
  bool hasMeasurement() => _measurement != null;

  // "shipmentvalue" field.
  String? _shipmentvalue;
  String get shipmentvalue => _shipmentvalue ?? '';
  bool hasShipmentvalue() => _shipmentvalue != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "phonenumber" field.
  String? _phonenumber;
  String get phonenumber => _phonenumber ?? '';
  bool hasPhonenumber() => _phonenumber != null;

  void _initializeFields() {
    _orderid = snapshotData['orderid'] as String?;
    _weight = snapshotData['weight'] as String?;
    _measurement = snapshotData['measurement'] as String?;
    _shipmentvalue = snapshotData['shipmentvalue'] as String?;
    _content = snapshotData['content'] as String?;
    _phonenumber = snapshotData['phonenumber'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Order');

  static Stream<OrderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderRecord.fromSnapshot(s));

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderRecord.fromSnapshot(s));

  static OrderRecord fromSnapshot(DocumentSnapshot snapshot) => OrderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderRecordData({
  String? orderid,
  String? weight,
  String? measurement,
  String? shipmentvalue,
  String? content,
  String? phonenumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'orderid': orderid,
      'weight': weight,
      'measurement': measurement,
      'shipmentvalue': shipmentvalue,
      'content': content,
      'phonenumber': phonenumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderRecordDocumentEquality implements Equality<OrderRecord> {
  const OrderRecordDocumentEquality();

  @override
  bool equals(OrderRecord? e1, OrderRecord? e2) {
    return e1?.orderid == e2?.orderid &&
        e1?.weight == e2?.weight &&
        e1?.measurement == e2?.measurement &&
        e1?.shipmentvalue == e2?.shipmentvalue &&
        e1?.content == e2?.content &&
        e1?.phonenumber == e2?.phonenumber;
  }

  @override
  int hash(OrderRecord? e) => const ListEquality().hash([
        e?.orderid,
        e?.weight,
        e?.measurement,
        e?.shipmentvalue,
        e?.content,
        e?.phonenumber
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderRecord;
}
