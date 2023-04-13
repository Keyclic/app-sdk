part of keyclic_sdk_api.api;

class FeedbackLinksImagesIriTemplateMapping {
  FeedbackLinksImagesIriTemplateMapping({
    this.feedback,
    this.image,
  });

  factory FeedbackLinksImagesIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksImagesIriTemplateMapping(
      feedback: json['feedback'],
      image: json['image'],
    );
  }

  String feedback;

  String image;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksImagesIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        feedback == other.feedback &&
        image == other.image;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= feedback?.hashCode ?? 0;
    hashCode ^= image?.hashCode ?? 0;

    return hashCode;
  }

  static List<FeedbackLinksImagesIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                FeedbackLinksImagesIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <FeedbackLinksImagesIriTemplateMapping>[];
  }

  static Map<String, FeedbackLinksImagesIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, FeedbackLinksImagesIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, FeedbackLinksImagesIriTemplateMapping.fromJson(value));
        }) ??
        <String, FeedbackLinksImagesIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (feedback != null) 'feedback': feedback,
      if (image != null) 'image': image,
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksImagesIriTemplateMapping[feedback=$feedback, image=$image, ]';
  }
}
