//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OperationSignature {
  /// Returns a new [OperationSignature] instance.
  OperationSignature({
    this.signedAt,
    this.signer,
  });

  /// Returns a new [OperationSignature] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OperationSignature.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime signedAt =
        json['signedAt'] == null ? null : DateTime.parse(json[r'signedAt']);
    if (signedAt is DateTime && signedAt.isUtc == false) {
      signedAt = DateTime.parse('${json[r'signedAt']}Z');
    }

    return OperationSignature(
      signedAt: signedAt,
      signer: SignatureSigner.fromJson(json[r'signer']),
    );
  }

  DateTime signedAt;

  SignatureSigner signer;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationSignature &&
        other.signedAt == signedAt &&
        other.signer == signer;
  }

  @override
  int get hashCode =>
      (signedAt == null ? 0 : signedAt.hashCode) +
      (signer == null ? 0 : signer.hashCode);

  static List<OperationSignature> listFromJson(List<dynamic> json) {
    return <OperationSignature>[
      if (json is List)
        for (dynamic value in json) OperationSignature.fromJson(value),
    ];
  }

  static Map<String, OperationSignature> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OperationSignature>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationSignature.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OperationSignature-objects as value to a dart map
  static Map<String, List<OperationSignature>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OperationSignature>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationSignature.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OperationSignature[signedAt=$signedAt, signer=$signer]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (signedAt != null) r'signedAt': signedAt.toUtc().toIso8601String(),
      if (signer != null) r'signer': signer,
    };
  }
}
