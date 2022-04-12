//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class RuleData {
  /// Returns a new [RuleData] instance.
  RuleData({
    @required this.category,
    @required this.dispatcher,
    @required this.service,
  });

  /// Returns a new [RuleData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory RuleData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RuleData(
      category: json[r'category'],
      dispatcher: json[r'dispatcher'],
      service: json[r'service'],
    );
  }

  String category;

  String dispatcher;

  String service;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleData &&
        other.category == category &&
        other.dispatcher == dispatcher &&
        other.service == service;
  }

  @override
  int get hashCode =>
      (category == null ? 0 : category.hashCode) +
      (dispatcher == null ? 0 : dispatcher.hashCode) +
      (service == null ? 0 : service.hashCode);

  static List<RuleData> listFromJson(List<dynamic> json) {
    return <RuleData>[
      if (json is List)
        for (dynamic value in json) RuleData.fromJson(value),
    ];
  }

  static Map<String, RuleData> mapFromJson(Map<String, dynamic> json) {
    return <String, RuleData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: RuleData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of RuleData-objects as value to a dart map
  static Map<String, List<RuleData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<RuleData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: RuleData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'RuleData[category=$category, dispatcher=$dispatcher, service=$service]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'category': category,
      r'dispatcher': dispatcher,
      r'service': service,
    };
  }
}
