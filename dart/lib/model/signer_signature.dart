//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SignerSignature {
  /// Returns a new [SignerSignature] instance.
  SignerSignature({
    this.signedAt,
    this.text,
  });

  /// Returns a new [SignerSignature] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SignerSignature? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime signedAt = DateTime.parse(json[r'signedAt']);
    if (signedAt is DateTime && signedAt.isUtc == false) {
      signedAt = DateTime.parse('${json[r'signedAt']}Z');
    }

    return SignerSignature(
      signedAt: signedAt,
      text: json[r'text'],
    );
  }

  DateTime? signedAt;

  String? text;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerSignature &&
        other.signedAt == signedAt &&
        other.text == text;
  }

  @override
  int get hashCode =>
      (signedAt == null ? 0 : signedAt.hashCode) +
      (text == null ? 0 : text.hashCode);

  static List<SignerSignature> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <SignerSignature>[];
    }
    return json
        .map((value) {
          return SignerSignature.fromJson(value);
        })
        .whereType<SignerSignature>()
        .toList();
  }

  static Map<String, SignerSignature> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SignerSignature>{};
    }

    final map = json.map((key, value) => MapEntry<String, SignerSignature?>(
        key, SignerSignature.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, SignerSignature>;
  }

  // maps a json object with a list of SignerSignature-objects as value to a dart map
  static Map<String, List<SignerSignature>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<SignerSignature>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: SignerSignature.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'SignerSignature[signedAt=$signedAt, text=$text]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (signedAt != null) r'signedAt': signedAt!.toUtc().toIso8601String(),
      if (text != null) r'text': text,
    };
  }
}
