//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class LegacySignatureData {
  /// Returns a new [LegacySignatureData] instance.
  LegacySignatureData({
    this.signer,
    @required this.image,
  });

  /// Returns a new [LegacySignatureData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory LegacySignatureData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return LegacySignatureData(
      signer: LegacySignatureDataSigner.fromJson(json[r'signer']),
      image: json[r'image'],
    );
  }

  LegacySignatureDataSigner signer;

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
  int get hashCode =>
      (signer == null ? 0 : signer.hashCode) +
      (image == null ? 0 : image.hashCode);

  static List<LegacySignatureData> listFromJson(List<dynamic> json) {
    return <LegacySignatureData>[
      if (json is List)
        for (dynamic value in json) LegacySignatureData.fromJson(value),
    ];
  }

  static Map<String, LegacySignatureData> mapFromJson(
      Map<String, dynamic> json) {
    return <String, LegacySignatureData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: LegacySignatureData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of LegacySignatureData-objects as value to a dart map
  static Map<String, List<LegacySignatureData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<LegacySignatureData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: LegacySignatureData.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'LegacySignatureData[signer=$signer, image=$image]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (signer != null) r'signer': signer,
      r'image': image,
    };
  }
}
