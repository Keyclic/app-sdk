//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SignerData {
  /// Returns a new [SignerData] instance.
  SignerData({
    required this.procedure,
    required this.member,
  });

  /// Returns a new [SignerData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SignerData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SignerData(
      procedure: json[r'procedure'],
      member: json[r'member'],
    );
  }

  String procedure;

  String member;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerData &&
        other.procedure == procedure &&
        other.member == member;
  }

  @override
  int get hashCode => procedure.hashCode + member.hashCode;

  static List<SignerData> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <SignerData>[];
    }

    return json.fold(<SignerData>[], (List<SignerData> previousValue, element) {
      final SignerData? object = SignerData.fromJson(element);
      if (object is SignerData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SignerData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SignerData>{};
    }

    return json.entries.fold(<String, SignerData>{},
        (Map<String, SignerData> previousValue, element) {
      final SignerData? object = SignerData.fromJson(element.value);
      if (object is SignerData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SignerData-objects as value to a dart map
  static Map<String, List<SignerData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SignerData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SignerData>>(
          key, SignerData.listFromJson(value));
    });
  }

  @override
  String toString() => 'SignerData[procedure=$procedure, member=$member]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'procedure': procedure,
      r'member': member,
    };
  }
}
