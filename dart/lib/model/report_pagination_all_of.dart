//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportPaginationAllOf {
  /// Returns a new [ReportPaginationAllOf] instance.
  ReportPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [ReportPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportPaginationAllOf(
      embedded: ReportCollection.fromJson(json[r'_embedded']),
    );
  }

  ReportCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<ReportPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReportPaginationAllOf>[];
    }

    return json.fold(<ReportPaginationAllOf>[],
        (List<ReportPaginationAllOf> previousValue, element) {
      final ReportPaginationAllOf? object =
          ReportPaginationAllOf.fromJson(element);
      if (object is ReportPaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportPaginationAllOf>{};
    }

    return json.entries.fold(<String, ReportPaginationAllOf>{},
        (Map<String, ReportPaginationAllOf> previousValue, element) {
      final ReportPaginationAllOf? object =
          ReportPaginationAllOf.fromJson(element.value);
      if (object is ReportPaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportPaginationAllOf-objects as value to a dart map
  static Map<String, List<ReportPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportPaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportPaginationAllOf>>(
          key, ReportPaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReportPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
