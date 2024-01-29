//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SignatureData {
  /// Returns a new [SignatureData] instance.
  SignatureData({
    required this.image,
    this.text,
  });

  /// Returns a new [SignatureData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SignatureData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SignatureData(
      image: json[r'image'],
      text: json[r'text'],
    );
  }

  String image;

  String? text;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignatureData && other.image == image && other.text == text;
  }

  @override
  int get hashCode => image.hashCode + (text == null ? 0 : text.hashCode);

  static List<SignatureData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <SignatureData>[];
    }

    return json.fold(<SignatureData>[],
        (List<SignatureData> previousValue, element) {
      final SignatureData? object = SignatureData.fromJson(element);
      if (object is SignatureData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SignatureData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SignatureData>{};
    }

    return json.entries.fold(<String, SignatureData>{},
        (Map<String, SignatureData> previousValue, element) {
      final SignatureData? object = SignatureData.fromJson(element.value);
      if (object is SignatureData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SignatureData-objects as value to a dart map
  static Map<String, List<SignatureData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SignatureData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SignatureData>>(
          key, SignatureData.listFromJson(value));
    });
  }

  @override
  String toString() => 'SignatureData[image=$image, text=$text]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'image': image,
      if (keys == null || keys.contains(r'text')) r'text': text,
    };
  }
}
