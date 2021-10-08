part of keyclic_sdk_api.api;

class ParseData {
  ParseData({
    this.delta,
  });

  factory ParseData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ParseData(
      delta: json['delta'] is Iterable
          ? List<Map<String, dynamic>>.from(json['delta'])
          : [],
    );
  }

  List<Map<String, dynamic>> delta;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ParseData &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(delta, other.delta);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (delta is List && delta.isNotEmpty) {
      hashCode ^= delta
          .map((Map<String, dynamic> element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<ParseData> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => ParseData.fromJson(value))?.toList() ??
        <ParseData>[];
  }

  static Map<String, ParseData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ParseData>((String key, dynamic value) {
          return MapEntry(key, ParseData.fromJson(value));
        }) ??
        <String, ParseData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (delta != null) 'delta': delta,
    };
  }

  @override
  String toString() {
    return 'ParseData[delta=$delta, ]';
  }
}
