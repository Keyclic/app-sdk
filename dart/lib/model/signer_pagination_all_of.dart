//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class SignerPaginationAllOf {
  /// Returns a new [SignerPaginationAllOf] instance.
  SignerPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [SignerPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory SignerPaginationAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignerPaginationAllOf(
      embedded: SignerCollection.fromJson(json[r'_embedded']),
    );
  }

  SignerCollection embedded;

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

  static List<SignerPaginationAllOf> listFromJson(List<dynamic> json) {
    return <SignerPaginationAllOf>[
      if (json is List)
        for (dynamic value in json) SignerPaginationAllOf.fromJson(value),
    ];
  }

  static Map<String, SignerPaginationAllOf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, SignerPaginationAllOf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SignerPaginationAllOf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of SignerPaginationAllOf-objects as value to a dart map
  static Map<String, List<SignerPaginationAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<SignerPaginationAllOf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SignerPaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'SignerPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
