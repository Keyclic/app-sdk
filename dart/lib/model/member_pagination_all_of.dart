//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberPaginationAllOf {
  /// Returns a new [MemberPaginationAllOf] instance.
  MemberPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [MemberPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MemberPaginationAllOf(
      embedded: MemberCollection.fromJson(json[r'_embedded']),
    );
  }

  MemberCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<MemberPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MemberPaginationAllOf>[];
    }

    return json.fold(<MemberPaginationAllOf>[],
        (List<MemberPaginationAllOf> previousValue, element) {
      final MemberPaginationAllOf? object =
          MemberPaginationAllOf.fromJson(element);
      if (object is MemberPaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MemberPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberPaginationAllOf>{};
    }

    return json.entries.fold(<String, MemberPaginationAllOf>{},
        (Map<String, MemberPaginationAllOf> previousValue, element) {
      final MemberPaginationAllOf? object =
          MemberPaginationAllOf.fromJson(element.value);
      if (object is MemberPaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MemberPaginationAllOf-objects as value to a dart map
  static Map<String, List<MemberPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MemberPaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MemberPaginationAllOf>>(
          key, MemberPaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'MemberPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
    };
  }
}
