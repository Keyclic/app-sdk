//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class SignatureData {
  /// Returns a new [SignatureData] instance.
  SignatureData({
    @required this.image,
    this.text,
  });

  /// Returns a new [SignatureData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory SignatureData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignatureData(
      image: json[r'image'],
      text: json[r'text'],
    );
  }

  String image;

  String text;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignatureData && other.image == image && other.text == text;
  }

  @override
  int get hashCode =>
      (image == null ? 0 : image.hashCode) + (text == null ? 0 : text.hashCode);

  static List<SignatureData> listFromJson(List<dynamic> json) {
    return <SignatureData>[
      if (json is List)
        for (dynamic value in json) SignatureData.fromJson(value),
    ];
  }

  static Map<String, SignatureData> mapFromJson(Map<String, dynamic> json) {
    return <String, SignatureData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SignatureData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of SignatureData-objects as value to a dart map
  static Map<String, List<SignatureData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<SignatureData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SignatureData.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'SignatureData[image=$image, text=$text]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'image': image,
      if (text != null) r'text': text,
    };
  }
}
