//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SignerData {
  /// Returns a new [SignerData] instance.
  SignerData({
    required this.document,
    this.procedure,
    required this.member,
  });

  /// Returns a new [SignerData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SignerData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SignerData(
      document: json[r'document'],
      procedure: json[r'procedure'],
      member: json[r'member'],
    );
  }

  String document;

  String? procedure;

  String member;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerData &&
        other.document == document &&
        other.procedure == procedure &&
        other.member == member;
  }

  @override
  int get hashCode =>
      document.hashCode +
      (procedure == null ? 0 : procedure.hashCode) +
      member.hashCode;

  static List<SignerData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <SignerData>[];
    }
    return json
        .map((value) {
          return SignerData.fromJson(value);
        })
        .whereType<SignerData>()
        .toList();
  }

  static Map<String, SignerData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SignerData>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, SignerData?>(key, SignerData.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, SignerData>;
  }

  // maps a json object with a list of SignerData-objects as value to a dart map
  static Map<String, List<SignerData>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<SignerData>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: SignerData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'SignerData[document=$document, procedure=$procedure, member=$member]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'document': document,
      if (procedure != null) r'procedure': procedure,
      r'member': member,
    };
  }
}
