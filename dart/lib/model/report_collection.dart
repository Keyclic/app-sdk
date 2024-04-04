//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportCollection {
  /// Returns a new [ReportCollection] instance.
  ReportCollection({
    this.items,
  });

  /// Returns a new [ReportCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportCollection? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReportCollection(
      items: Report.listFromJson(json[r'items']),
    );
  }

  List<Report>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<ReportCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReportCollection>[];
    }

    return json.fold(<ReportCollection>[],
        (List<ReportCollection> previousValue, element) {
      final ReportCollection? object = ReportCollection.fromJson(element);
      if (object is ReportCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportCollection> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportCollection>{};
    }

    return json.entries.fold(<String, ReportCollection>{},
        (Map<String, ReportCollection> previousValue, element) {
      final ReportCollection? object = ReportCollection.fromJson(element.value);
      if (object is ReportCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportCollection-objects as value to a dart map
  static Map<String, List<ReportCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportCollection>>(
          key, ReportCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReportCollection[items=$items]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'items')) r'items': items,
    };
  }
}
