//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportCollection {
  /// Returns a new [ReportCollection] instance.
  ReportCollection({
    this.items = const [],
  });

  /// Returns a new [ReportCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
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
    return json
        .map((value) {
          return ReportCollection.fromJson(value);
        })
        .whereType<ReportCollection>()
        .toList();
  }

  static Map<String, ReportCollection> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportCollection>{};
    }

    final map = json.map((key, value) => MapEntry<String, ReportCollection?>(
        key, ReportCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReportCollection>;
  }

  // maps a json object with a list of ReportCollection-objects as value to a dart map
  static Map<String, List<ReportCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReportCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ReportCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReportCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
