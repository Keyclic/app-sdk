part of keyclic_sdk_api.api;

class ReportLinksFeedback {
  ReportLinksFeedback({
    this.href,
    this.iriTemplate,
  });

  ReportLinksFeedback.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = ReportLinksFeedbackIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the feedback associated to the given report. */
  String href;

  ReportLinksFeedbackIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksFeedback && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<ReportLinksFeedback> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReportLinksFeedback>()
        : json.map((value) => ReportLinksFeedback.fromJson(value)).toList();
  }

  static Map<String, ReportLinksFeedback> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksFeedback>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksFeedback.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'ReportLinksFeedback[href=$href, iriTemplate=$iriTemplate, ]';
  }
}