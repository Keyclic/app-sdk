//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PriceData {
  /// Returns a new [PriceData] instance.
  PriceData({
    this.value,
  });

  /// Returns a new [PriceData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PriceData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PriceData(
      value: json[r'value'] == null ? null : json[r'value'].toDouble(),
    );
  }

  // minimum: 0
  num? value;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PriceData && other.value == value;
  }

  @override
  int get hashCode => (value == null ? 0 : value.hashCode);

  static List<PriceData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PriceData>[];
    }

    return json.fold(<PriceData>[], (List<PriceData> previousValue, element) {
      final PriceData? object = PriceData.fromJson(element);
      if (object is PriceData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PriceData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PriceData>{};
    }

    return json.entries.fold(<String, PriceData>{},
        (Map<String, PriceData> previousValue, element) {
      final PriceData? object = PriceData.fromJson(element.value);
      if (object is PriceData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PriceData-objects as value to a dart map
  static Map<String, List<PriceData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PriceData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PriceData>>(
          key, PriceData.listFromJson(value));
    });
  }

  @override
  String toString() => 'PriceData[value=$value]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (value != null) r'value': value,
    };
  }
}
