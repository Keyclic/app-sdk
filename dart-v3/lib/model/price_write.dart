//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PriceWrite {
  /// Returns a new [PriceWrite] instance.
  PriceWrite({
    this.value,
  });

  /// Returns a new [PriceWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PriceWrite? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PriceWrite(
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

    return other is PriceWrite && other.value == value;
  }

  @override
  int get hashCode => (value == null ? 0 : value.hashCode);

  static List<PriceWrite> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PriceWrite>[];
    }

    return json.fold(<PriceWrite>[], (List<PriceWrite> previousValue, element) {
      final PriceWrite? object = PriceWrite.fromJson(element);
      if (object is PriceWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PriceWrite> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PriceWrite>{};
    }

    return json.entries.fold(<String, PriceWrite>{},
        (Map<String, PriceWrite> previousValue, element) {
      final PriceWrite? object = PriceWrite.fromJson(element.value);
      if (object is PriceWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PriceWrite-objects as value to a dart map
  static Map<String, List<PriceWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PriceWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PriceWrite>>(
          key, PriceWrite.listFromJson(value));
    });
  }

  @override
  String toString() => 'PriceWrite[value=$value]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && value != null) ||
          (keys?.contains(r'value') ?? false))
        r'value': value,
    };
  }
}
