//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SignerPaginationAllOf {
  /// Returns a new [SignerPaginationAllOf] instance.
  SignerPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [SignerPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SignerPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SignerPaginationAllOf(
      embedded: SignerCollection.fromJson(json[r'_embedded']),
    );
  }

  SignerCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<SignerPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <SignerPaginationAllOf>[];
    }

    return json.fold(<SignerPaginationAllOf>[],
        (List<SignerPaginationAllOf> previousValue, element) {
      final SignerPaginationAllOf? object =
          SignerPaginationAllOf.fromJson(element);
      if (object is SignerPaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SignerPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SignerPaginationAllOf>{};
    }

    return json.entries.fold(<String, SignerPaginationAllOf>{},
        (Map<String, SignerPaginationAllOf> previousValue, element) {
      final SignerPaginationAllOf? object =
          SignerPaginationAllOf.fromJson(element.value);
      if (object is SignerPaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SignerPaginationAllOf-objects as value to a dart map
  static Map<String, List<SignerPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SignerPaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SignerPaginationAllOf>>(
          key, SignerPaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'SignerPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
