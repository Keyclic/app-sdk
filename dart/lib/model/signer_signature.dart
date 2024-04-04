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
  static SignerSignature? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    DateTime? signedAt =
        json[r'signedAt'] == null ? null : DateTime.parse(json[r'signedAt']);
    if (signedAt != null && signedAt.isUtc == false) {
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

    return json.fold(<SignerSignature>[],
        (List<SignerSignature> previousValue, element) {
      final SignerSignature? object = SignerSignature.fromJson(element);
      if (object is SignerSignature) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SignerSignature> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SignerSignature>{};
    }

    return json.entries.fold(<String, SignerSignature>{},
        (Map<String, SignerSignature> previousValue, element) {
      final SignerSignature? object = SignerSignature.fromJson(element.value);
      if (object is SignerSignature) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SignerSignature-objects as value to a dart map
  static Map<String, List<SignerSignature>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SignerSignature>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SignerSignature>>(
          key, SignerSignature.listFromJson(value));
    });
  }

  @override
  String toString() => 'SignerSignature[signedAt=$signedAt, text=$text]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'signedAt'))
        r'signedAt': signedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'text')) r'text': text,
    };
  }
}
