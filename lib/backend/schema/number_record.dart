import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NumberRecord extends FirestoreRecord {
  NumberRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "mobile" field.
  int? _mobile;
  int get mobile => _mobile ?? 0;
  bool hasMobile() => _mobile != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "dob" field.
  String? _dob;
  String get dob => _dob ?? '';
  bool hasDob() => _dob != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "firstname" field.
  String? _firstname;
  String get firstname => _firstname ?? '';
  bool hasFirstname() => _firstname != null;

  // "lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  bool hasLastname() => _lastname != null;

  // "address1" field.
  String? _address1;
  String get address1 => _address1 ?? '';
  bool hasAddress1() => _address1 != null;

  // "address2" field.
  String? _address2;
  String get address2 => _address2 ?? '';
  bool hasAddress2() => _address2 != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "wallet" field.
  int? _wallet;
  int get wallet => _wallet ?? 0;
  bool hasWallet() => _wallet != null;

  // "deliverylocation" field.
  String? _deliverylocation;
  String get deliverylocation => _deliverylocation ?? '';
  bool hasDeliverylocation() => _deliverylocation != null;

  // "pickuplocation" field.
  String? _pickuplocation;
  String get pickuplocation => _pickuplocation ?? '';
  bool hasPickuplocation() => _pickuplocation != null;

  // "paymentid" field.
  String? _paymentid;
  String get paymentid => _paymentid ?? '';
  bool hasPaymentid() => _paymentid != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  bool hasWeight() => _weight != null;

  // "measurement" field.
  double? _measurement;
  double get measurement => _measurement ?? 0.0;
  bool hasMeasurement() => _measurement != null;

  // "shipementvalue" field.
  int? _shipementvalue;
  int get shipementvalue => _shipementvalue ?? 0;
  bool hasShipementvalue() => _shipementvalue != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "vehicletype" field.
  String? _vehicletype;
  String get vehicletype => _vehicletype ?? '';
  bool hasVehicletype() => _vehicletype != null;

  // "addresstype" field.
  String? _addresstype;
  String get addresstype => _addresstype ?? '';
  bool hasAddresstype() => _addresstype != null;

  // "deliverycity" field.
  String? _deliverycity;
  String get deliverycity => _deliverycity ?? '';
  bool hasDeliverycity() => _deliverycity != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _bio = snapshotData['bio'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _mobile = castToType<int>(snapshotData['mobile']);
    _gender = snapshotData['gender'] as String?;
    _dob = snapshotData['dob'] as String?;
    _password = snapshotData['password'] as String?;
    _firstname = snapshotData['firstname'] as String?;
    _lastname = snapshotData['lastname'] as String?;
    _address1 = snapshotData['address1'] as String?;
    _address2 = snapshotData['address2'] as String?;
    _city = snapshotData['city'] as String?;
    _country = snapshotData['country'] as String?;
    _wallet = castToType<int>(snapshotData['wallet']);
    _deliverylocation = snapshotData['deliverylocation'] as String?;
    _pickuplocation = snapshotData['pickuplocation'] as String?;
    _paymentid = snapshotData['paymentid'] as String?;
    _weight = castToType<double>(snapshotData['weight']);
    _measurement = castToType<double>(snapshotData['measurement']);
    _shipementvalue = castToType<int>(snapshotData['shipementvalue']);
    _content = snapshotData['content'] as String?;
    _vehicletype = snapshotData['vehicletype'] as String?;
    _addresstype = snapshotData['addresstype'] as String?;
    _deliverycity = snapshotData['deliverycity'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Number');

  static Stream<NumberRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NumberRecord.fromSnapshot(s));

  static Future<NumberRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NumberRecord.fromSnapshot(s));

  static NumberRecord fromSnapshot(DocumentSnapshot snapshot) => NumberRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NumberRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NumberRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NumberRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NumberRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNumberRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? bio,
  String? userName,
  int? mobile,
  String? gender,
  String? dob,
  String? password,
  String? firstname,
  String? lastname,
  String? address1,
  String? address2,
  String? city,
  String? country,
  int? wallet,
  String? deliverylocation,
  String? pickuplocation,
  String? paymentid,
  double? weight,
  double? measurement,
  int? shipementvalue,
  String? content,
  String? vehicletype,
  String? addresstype,
  String? deliverycity,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edited_time': editedTime,
      'bio': bio,
      'user_name': userName,
      'mobile': mobile,
      'gender': gender,
      'dob': dob,
      'password': password,
      'firstname': firstname,
      'lastname': lastname,
      'address1': address1,
      'address2': address2,
      'city': city,
      'country': country,
      'wallet': wallet,
      'deliverylocation': deliverylocation,
      'pickuplocation': pickuplocation,
      'paymentid': paymentid,
      'weight': weight,
      'measurement': measurement,
      'shipementvalue': shipementvalue,
      'content': content,
      'vehicletype': vehicletype,
      'addresstype': addresstype,
      'deliverycity': deliverycity,
    }.withoutNulls,
  );

  return firestoreData;
}

class NumberRecordDocumentEquality implements Equality<NumberRecord> {
  const NumberRecordDocumentEquality();

  @override
  bool equals(NumberRecord? e1, NumberRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.editedTime == e2?.editedTime &&
        e1?.bio == e2?.bio &&
        e1?.userName == e2?.userName &&
        e1?.mobile == e2?.mobile &&
        e1?.gender == e2?.gender &&
        e1?.dob == e2?.dob &&
        e1?.password == e2?.password &&
        e1?.firstname == e2?.firstname &&
        e1?.lastname == e2?.lastname &&
        e1?.address1 == e2?.address1 &&
        e1?.address2 == e2?.address2 &&
        e1?.city == e2?.city &&
        e1?.country == e2?.country &&
        e1?.wallet == e2?.wallet &&
        e1?.deliverylocation == e2?.deliverylocation &&
        e1?.pickuplocation == e2?.pickuplocation &&
        e1?.paymentid == e2?.paymentid &&
        e1?.weight == e2?.weight &&
        e1?.measurement == e2?.measurement &&
        e1?.shipementvalue == e2?.shipementvalue &&
        e1?.content == e2?.content &&
        e1?.vehicletype == e2?.vehicletype &&
        e1?.addresstype == e2?.addresstype &&
        e1?.deliverycity == e2?.deliverycity;
  }

  @override
  int hash(NumberRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.editedTime,
        e?.bio,
        e?.userName,
        e?.mobile,
        e?.gender,
        e?.dob,
        e?.password,
        e?.firstname,
        e?.lastname,
        e?.address1,
        e?.address2,
        e?.city,
        e?.country,
        e?.wallet,
        e?.deliverylocation,
        e?.pickuplocation,
        e?.paymentid,
        e?.weight,
        e?.measurement,
        e?.shipementvalue,
        e?.content,
        e?.vehicletype,
        e?.addresstype,
        e?.deliverycity
      ]);

  @override
  bool isValidKey(Object? o) => o is NumberRecord;
}
