part of keyclic_sdk_api.api;

class FeedbackLinksReporterIriTemplate {
  FeedbackLinksReporterIriTemplate({
    this.mapping,
  });

  FeedbackLinksReporterIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        DelegationLinksCreatedByIriTemplateMapping.fromJson(json['mapping']);
  }

  DelegationLinksCreatedByIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksReporterIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ mapping.hashCode;

  static List<FeedbackLinksReporterIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <FeedbackLinksReporterIriTemplate>[]
        : json
            .map((value) => FeedbackLinksReporterIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackLinksReporterIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksReporterIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackLinksReporterIriTemplate.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksReporterIriTemplate[mapping=$mapping, ]';
  }
}
