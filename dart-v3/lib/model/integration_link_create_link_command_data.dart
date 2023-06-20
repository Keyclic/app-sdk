//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class IntegrationLinkCreateLinkCommandData {
  /// Returns a new [IntegrationLinkCreateLinkCommandData] instance.
  IntegrationLinkCreateLinkCommandData({
    this.data = const {},
    required this.integration,
    this.metadata = const {},
    this.name,
    required this.source_,
    this.target,
  });

  /// Returns a new [IntegrationLinkCreateLinkCommandData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static IntegrationLinkCreateLinkCommandData? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return IntegrationLinkCreateLinkCommandData(
      data: Map<String, Object>.from(json[r'data']),
      integration: json[r'integration'],
      metadata: Map<String, Object>.from(json[r'metadata']),
      name: json[r'name'],
      source_: json[r'source'],
      target: json[r'target'],
    );
  }

  Map<String, Object>? data;

  String integration;

  Map<String, Object>? metadata;

  String? name;

  String source_;

  String? target;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is IntegrationLinkCreateLinkCommandData &&
        DeepCollectionEquality.unordered().equals(data, other.data) &&
        other.integration == integration &&
        DeepCollectionEquality.unordered().equals(metadata, other.metadata) &&
        other.name == name &&
        other.source_ == source_ &&
        other.target == target;
  }

  @override
  int get hashCode =>
      (data == null ? 0 : data.hashCode) +
      integration.hashCode +
      (metadata == null ? 0 : metadata.hashCode) +
      (name == null ? 0 : name.hashCode) +
      source_.hashCode +
      (target == null ? 0 : target.hashCode);

  static List<IntegrationLinkCreateLinkCommandData> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <IntegrationLinkCreateLinkCommandData>[];
    }

    return json.fold(<IntegrationLinkCreateLinkCommandData>[],
        (List<IntegrationLinkCreateLinkCommandData> previousValue, element) {
      final IntegrationLinkCreateLinkCommandData? object =
          IntegrationLinkCreateLinkCommandData.fromJson(element);
      if (object is IntegrationLinkCreateLinkCommandData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, IntegrationLinkCreateLinkCommandData> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, IntegrationLinkCreateLinkCommandData>{};
    }

    return json.entries.fold(<String, IntegrationLinkCreateLinkCommandData>{},
        (Map<String, IntegrationLinkCreateLinkCommandData> previousValue,
            element) {
      final IntegrationLinkCreateLinkCommandData? object =
          IntegrationLinkCreateLinkCommandData.fromJson(element.value);
      if (object is IntegrationLinkCreateLinkCommandData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of IntegrationLinkCreateLinkCommandData-objects as value to a dart map
  static Map<String, List<IntegrationLinkCreateLinkCommandData>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<IntegrationLinkCreateLinkCommandData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<IntegrationLinkCreateLinkCommandData>>(
          key, IntegrationLinkCreateLinkCommandData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'IntegrationLinkCreateLinkCommandData[data=$data, integration=$integration, metadata=$metadata, name=$name, source_=$source_, target=$target]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (data != null) r'data': data,
      r'integration': integration,
      if (metadata != null) r'metadata': metadata,
      if (name != null) r'name': name,
      r'source': source_,
      if (target != null) r'target': target,
    };
  }
}
