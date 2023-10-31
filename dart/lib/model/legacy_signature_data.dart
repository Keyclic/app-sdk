//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class LegacySignatureData {
  /// Returns a new [LegacySignatureData] instance.
  LegacySignatureData({
    this.signer,
    required this.image,
  });

  /// Returns a new [LegacySignatureData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static LegacySignatureData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LegacySignatureData(
      signer: LegacySignatureDataSigner.fromJson(json[r'signer']),
      image: json[r'image'],
    );
  }

  LegacySignatureDataSigner? signer;

  String image;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is LegacySignatureData &&
        other.signer == signer &&
        other.image == image;
  }

  @override
  int get hashCode => (signer == null ? 0 : signer.hashCode) + image.hashCode;

  static List<LegacySignatureData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <LegacySignatureData>[];
    }

    return json.fold(<LegacySignatureData>[],
        (List<LegacySignatureData> previousValue, element) {
      final LegacySignatureData? object = LegacySignatureData.fromJson(element);
      if (object is LegacySignatureData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, LegacySignatureData> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, LegacySignatureData>{};
    }

    return json.entries.fold(<String, LegacySignatureData>{},
        (Map<String, LegacySignatureData> previousValue, element) {
      final LegacySignatureData? object =
          LegacySignatureData.fromJson(element.value);
      if (object is LegacySignatureData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of LegacySignatureData-objects as value to a dart map
  static Map<String, List<LegacySignatureData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<LegacySignatureData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<LegacySignatureData>>(
          key, LegacySignatureData.listFromJson(value));
    });
  }

  @override
  String toString() => 'LegacySignatureData[signer=$signer, image=$image]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && signer != null) ||
          (keys?.contains(r'signer') ?? false))
        r'signer': signer?.toJson(),
      r'image': image,
    };
  }
}
