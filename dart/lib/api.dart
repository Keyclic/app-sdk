library keyclic_sdk_api.api;

import 'dart:async';
import 'dart:convert';
import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:logging/logging.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/application_api.dart';
part 'api/article_api.dart';
part 'api/assignment_api.dart';
part 'api/bookmark_api.dart';
part 'api/business_activity_api.dart';
part 'api/category_api.dart';
part 'api/configuration_api.dart';
part 'api/connector_api.dart';
part 'api/contribution_api.dart';
part 'api/device_api.dart';
part 'api/digital_document_api.dart';
part 'api/dispatcher_api.dart';
part 'api/document_api.dart';
part 'api/export_api.dart';
part 'api/external_service_api.dart';
part 'api/feed_api.dart';
part 'api/feedback_api.dart';
part 'api/internal_service_api.dart';
part 'api/invitation_api.dart';
part 'api/knowledge_base_api.dart';
part 'api/marker_api.dart';
part 'api/member_api.dart';
part 'api/occupant_api.dart';
part 'api/operation_api.dart';
part 'api/organization_api.dart';
part 'api/pdf_api.dart';
part 'api/person_api.dart';
part 'api/place_api.dart';
part 'api/plan_api.dart';
part 'api/procedure_api.dart';
part 'api/publication_api.dart';
part 'api/report_api.dart';
part 'api/review_api.dart';
part 'api/review_request_api.dart';
part 'api/role_api.dart';
part 'api/rule_api.dart';
part 'api/section_api.dart';
part 'api/security_api.dart';
part 'api/service_api.dart';
part 'api/signer_api.dart';
part 'api/template_api.dart';
part 'api/webhook_api.dart';
part 'api/workflow_api.dart';

part 'model/activity.dart';
part 'model/activity_aggregated_pagination.dart';
part 'model/activity_entity.dart';
part 'model/activity_group.dart';
part 'model/activity_pagination.dart';
part 'model/agreement_older_than.dart';
part 'model/agreement_privacy_policy.dart';
part 'model/agreement_terms_of_service.dart';
part 'model/application.dart';
part 'model/application_about.dart';
part 'model/application_agreement.dart';
part 'model/application_configuration.dart';
part 'model/application_contact_point.dart';
part 'model/application_links.dart';
part 'model/application_links_knowledge_base.dart';
part 'model/application_links_knowledge_base_iri_template.dart';
part 'model/application_links_knowledge_base_iri_template_mapping.dart';
part 'model/application_links_self.dart';
part 'model/application_links_self_iri_template.dart';
part 'model/application_links_self_iri_template_mapping.dart';
part 'model/article.dart';
part 'model/article_collection.dart';
part 'model/article_links.dart';
part 'model/article_links_section.dart';
part 'model/article_links_section_iri_template.dart';
part 'model/article_links_section_iri_template_mapping.dart';
part 'model/article_links_self.dart';
part 'model/article_links_self_iri_template.dart';
part 'model/article_links_self_iri_template_mapping.dart';
part 'model/assign_data.dart';
part 'model/assignment.dart';
part 'model/assignment_collection.dart';
part 'model/assignment_data.dart';
part 'model/assignment_embedded.dart';
part 'model/assignment_links.dart';
part 'model/assignment_links_report.dart';
part 'model/assignment_links_report_iri_template.dart';
part 'model/assignment_links_report_iri_template_mapping.dart';
part 'model/assignment_links_self.dart';
part 'model/assignment_links_self_iri_template.dart';
part 'model/assignment_links_self_iri_template_mapping.dart';
part 'model/assignment_links_service.dart';
part 'model/assignment_links_service_iri_template.dart';
part 'model/assignment_links_service_iri_template_mapping.dart';
part 'model/binary.dart';
part 'model/binary_collection.dart';
part 'model/bookmark.dart';
part 'model/bookmark_collection.dart';
part 'model/bookmark_data.dart';
part 'model/bookmark_embedded.dart';
part 'model/bookmark_links.dart';
part 'model/bookmark_links_member.dart';
part 'model/bookmark_links_member_iri_template.dart';
part 'model/bookmark_links_member_iri_template_mapping.dart';
part 'model/bookmark_links_place.dart';
part 'model/bookmark_links_place_iri_template.dart';
part 'model/bookmark_links_place_iri_template_mapping.dart';
part 'model/bookmark_links_self.dart';
part 'model/bookmark_links_self_iri_template.dart';
part 'model/bookmark_links_self_iri_template_mapping.dart';
part 'model/business_activity.dart';
part 'model/business_activity_collection.dart';
part 'model/business_activity_links.dart';
part 'model/business_activity_links_image.dart';
part 'model/business_activity_links_image_iri_template.dart';
part 'model/business_activity_links_image_iri_template_mapping.dart';
part 'model/business_activity_links_schema.dart';
part 'model/business_activity_links_schema_iri_template.dart';
part 'model/business_activity_links_self.dart';
part 'model/business_activity_links_self_iri_template.dart';
part 'model/business_activity_links_thumbnail.dart';
part 'model/business_activity_links_thumbnail_iri_template.dart';
part 'model/business_activity_schema.dart';
part 'model/category.dart';
part 'model/category_collection.dart';
part 'model/category_data.dart';
part 'model/category_embedded.dart';
part 'model/category_links.dart';
part 'model/category_links_organization.dart';
part 'model/category_links_organization_iri_template.dart';
part 'model/category_links_organization_iri_template_mapping.dart';
part 'model/category_links_self.dart';
part 'model/category_links_self_iri_template.dart';
part 'model/category_links_self_iri_template_mapping.dart';
part 'model/category_patch.dart';
part 'model/chart.dart';
part 'model/checkpoint.dart';
part 'model/checkpoint_embedded.dart';
part 'model/checkpoint_links.dart';
part 'model/checkpoint_links_organization.dart';
part 'model/checkpoint_links_organization_iri_template.dart';
part 'model/checkpoint_state.dart';
part 'model/comment_data.dart';
part 'model/condition_list_condition.dart';
part 'model/configuration.dart';
part 'model/configuration_links.dart';
part 'model/configuration_links_self.dart';
part 'model/configuration_links_self_iri_template.dart';
part 'model/configuration_links_self_iri_template_mapping.dart';
part 'model/configuration_member_type.dart';
part 'model/configuration_operation_type.dart';
part 'model/configuration_place_type.dart';
part 'model/configuration_report_type.dart';
part 'model/contribution.dart';
part 'model/contribution_collection.dart';
part 'model/contribution_data.dart';
part 'model/contribution_links.dart';
part 'model/contribution_links_contributor.dart';
part 'model/contribution_links_contributor_iri_template.dart';
part 'model/contribution_links_contributor_iri_template_mapping.dart';
part 'model/contribution_links_feedback.dart';
part 'model/contribution_links_feedback_iri_template.dart';
part 'model/contribution_links_feedback_iri_template_mapping.dart';
part 'model/device.dart';
part 'model/device_data.dart';
part 'model/device_links.dart';
part 'model/device_links_person.dart';
part 'model/device_links_person_iri_template.dart';
part 'model/device_links_self.dart';
part 'model/device_links_self_iri_template.dart';
part 'model/device_links_self_iri_template_mapping.dart';
part 'model/dispatcher.dart';
part 'model/document.dart';
part 'model/document_collection.dart';
part 'model/document_data.dart';
part 'model/document_data_file.dart';
part 'model/document_data_permission.dart';
part 'model/document_embedded.dart';
part 'model/document_file.dart';
part 'model/document_links.dart';
part 'model/document_links_created_by.dart';
part 'model/document_links_created_by_iri_template.dart';
part 'model/document_links_file.dart';
part 'model/document_links_file_iri_template.dart';
part 'model/document_links_file_iri_template_mapping.dart';
part 'model/document_links_procedure.dart';
part 'model/document_links_procedure_iri_template.dart';
part 'model/document_links_procedure_iri_template_mapping.dart';
part 'model/document_links_self.dart';
part 'model/document_links_self_iri_template.dart';
part 'model/document_patch.dart';
part 'model/document_patch_file.dart';
part 'model/document_patch_permission.dart';
part 'model/document_permission.dart';
part 'model/document_type.dart';
part 'model/document_workflow_data.dart';
part 'model/duration.dart';
part 'model/export_data.dart';
part 'model/external_service.dart';
part 'model/external_service_collection.dart';
part 'model/external_service_contact_point.dart';
part 'model/external_service_data.dart';
part 'model/external_service_embedded.dart';
part 'model/external_service_links.dart';
part 'model/external_service_links_provider.dart';
part 'model/external_service_links_provider_iri_template.dart';
part 'model/external_service_links_self.dart';
part 'model/external_service_links_self_iri_template.dart';
part 'model/external_service_links_self_iri_template_mapping.dart';
part 'model/external_service_patch.dart';
part 'model/external_service_patch_address.dart';
part 'model/external_service_patch_contact_point.dart';
part 'model/external_service_postal_address.dart';
part 'model/feature.dart';
part 'model/feature_geometry.dart';
part 'model/feedback.dart';
part 'model/feedback_collection.dart';
part 'model/feedback_data.dart';
part 'model/feedback_data_geo.dart';
part 'model/feedback_data_geo_point.dart';
part 'model/feedback_embedded.dart';
part 'model/feedback_geo_coordinates.dart';
part 'model/feedback_links.dart';
part 'model/feedback_links_business_activity.dart';
part 'model/feedback_links_business_activity_iri_template.dart';
part 'model/feedback_links_category.dart';
part 'model/feedback_links_category_iri_template.dart';
part 'model/feedback_links_image.dart';
part 'model/feedback_links_image_iri_template.dart';
part 'model/feedback_links_image_iri_template_mapping.dart';
part 'model/feedback_links_images.dart';
part 'model/feedback_links_images_iri_template.dart';
part 'model/feedback_links_plans.dart';
part 'model/feedback_links_plans_iri_template.dart';
part 'model/feedback_links_plans_iri_template_mapping.dart';
part 'model/feedback_links_report.dart';
part 'model/feedback_links_report_iri_template.dart';
part 'model/feedback_links_reporter.dart';
part 'model/feedback_links_reporter_iri_template.dart';
part 'model/feedback_links_self.dart';
part 'model/feedback_links_self_iri_template.dart';
part 'model/feedback_links_tracking.dart';
part 'model/feedback_links_tracking_iri_template.dart';
part 'model/feedback_workflow_transition_data.dart';
part 'model/file_data.dart';
part 'model/geo_shape.dart';
part 'model/geo_shape_centroid.dart';
part 'model/image_data.dart';
part 'model/internal_service.dart';
part 'model/internal_service_collection.dart';
part 'model/internal_service_contact_point.dart';
part 'model/internal_service_data.dart';
part 'model/internal_service_data_address.dart';
part 'model/internal_service_data_contact_point.dart';
part 'model/internal_service_embedded.dart';
part 'model/internal_service_links.dart';
part 'model/internal_service_links_organization.dart';
part 'model/internal_service_links_organization_iri_template.dart';
part 'model/internal_service_links_self.dart';
part 'model/internal_service_links_self_iri_template.dart';
part 'model/internal_service_links_self_iri_template_mapping.dart';
part 'model/internal_service_patch.dart';
part 'model/internal_service_postal_address.dart';
part 'model/invitation.dart';
part 'model/invitation_data.dart';
part 'model/invitation_embedded.dart';
part 'model/invitation_links.dart';
part 'model/invitation_links_member.dart';
part 'model/invitation_links_member_iri_template.dart';
part 'model/invitation_links_self.dart';
part 'model/invitation_links_self_iri_template.dart';
part 'model/invitation_links_self_iri_template_mapping.dart';
part 'model/items_choice.dart';
part 'model/knowledge_base.dart';
part 'model/knowledge_base_links.dart';
part 'model/knowledge_base_links_self.dart';
part 'model/knowledge_base_links_self_iri_template.dart';
part 'model/legacy_signature_data.dart';
part 'model/legacy_signature_data_signer.dart';
part 'model/login_data.dart';
part 'model/marker.dart';
part 'model/marker_data.dart';
part 'model/marker_data_point.dart';
part 'model/marker_links.dart';
part 'model/marker_links_plan.dart';
part 'model/marker_links_plan_iri_template.dart';
part 'model/marker_links_plan_iri_template_mapping.dart';
part 'model/marker_links_self.dart';
part 'model/marker_links_self_iri_template.dart';
part 'model/marker_links_self_iri_template_mapping.dart';
part 'model/member.dart';
part 'model/member_collection.dart';
part 'model/member_contact_point.dart';
part 'model/member_data.dart';
part 'model/member_embedded.dart';
part 'model/member_links.dart';
part 'model/member_links_organization.dart';
part 'model/member_links_organization_iri_template.dart';
part 'model/member_links_person.dart';
part 'model/member_links_person_iri_template.dart';
part 'model/member_links_self.dart';
part 'model/member_links_self_iri_template.dart';
part 'model/member_patch.dart';
part 'model/member_patch_contact_point.dart';
part 'model/member_type_role.dart';
part 'model/metric.dart';
part 'model/model_export.dart';
part 'model/node_path.dart';
part 'model/occupant.dart';
part 'model/occupant_collection.dart';
part 'model/occupant_data.dart';
part 'model/occupant_links.dart';
part 'model/occupant_links_member.dart';
part 'model/occupant_links_member_iri_template.dart';
part 'model/occupant_links_place.dart';
part 'model/occupant_links_place_iri_template.dart';
part 'model/occupant_links_self.dart';
part 'model/occupant_links_self_iri_template.dart';
part 'model/occupant_links_self_iri_template_mapping.dart';
part 'model/operation.dart';
part 'model/operation_collection.dart';
part 'model/operation_data.dart';
part 'model/operation_embedded.dart';
part 'model/operation_embedded_workflow.dart';
part 'model/operation_links.dart';
part 'model/operation_links_feedback.dart';
part 'model/operation_links_feedback_iri_template.dart';
part 'model/operation_links_image.dart';
part 'model/operation_links_image_iri_template.dart';
part 'model/operation_links_image_iri_template_mapping.dart';
part 'model/operation_links_images.dart';
part 'model/operation_links_images_iri_template.dart';
part 'model/operation_links_images_iri_template_mapping.dart';
part 'model/operation_links_operator.dart';
part 'model/operation_links_operator_iri_template.dart';
part 'model/operation_links_organization.dart';
part 'model/operation_links_organization_iri_template.dart';
part 'model/operation_links_report.dart';
part 'model/operation_links_report_iri_template.dart';
part 'model/operation_links_self.dart';
part 'model/operation_links_self_iri_template.dart';
part 'model/operation_links_self_iri_template_mapping.dart';
part 'model/operation_links_tracking.dart';
part 'model/operation_links_tracking_iri_template.dart';
part 'model/operation_priority.dart';
part 'model/operation_signature.dart';
part 'model/operation_type_workflow.dart';
part 'model/organization.dart';
part 'model/organization_collection.dart';
part 'model/organization_links.dart';
part 'model/organization_links_application.dart';
part 'model/organization_links_application_iri_template.dart';
part 'model/organization_links_business_activity.dart';
part 'model/organization_links_business_activity_iri_template.dart';
part 'model/organization_links_configuration.dart';
part 'model/organization_links_configuration_iri_template.dart';
part 'model/organization_links_dispatcher.dart';
part 'model/organization_links_dispatcher_iri_template.dart';
part 'model/organization_links_dispatcher_iri_template_mapping.dart';
part 'model/organization_links_logo.dart';
part 'model/organization_links_logo_iri_template.dart';
part 'model/organization_links_self.dart';
part 'model/organization_links_self_iri_template.dart';
part 'model/organization_patch.dart';
part 'model/organization_patch_preferences.dart';
part 'model/organization_patch_preferences_reference.dart';
part 'model/organization_postal_address.dart';
part 'model/organization_preferences.dart';
part 'model/pagination.dart';
part 'model/pagination_link.dart';
part 'model/pagination_links.dart';
part 'model/password_change_data.dart';
part 'model/permission.dart';
part 'model/person.dart';
part 'model/person_agreement.dart';
part 'model/person_links.dart';
part 'model/person_links_image.dart';
part 'model/person_links_image_iri_template.dart';
part 'model/person_links_self.dart';
part 'model/person_links_self_iri_template.dart';
part 'model/person_patch.dart';
part 'model/person_patch_agreement.dart';
part 'model/person_patch_preferences.dart';
part 'model/person_patch_preferences_notification.dart';
part 'model/person_preferences.dart';
part 'model/place.dart';
part 'model/place_collection.dart';
part 'model/place_data.dart';
part 'model/place_embedded.dart';
part 'model/place_embedded_target_groups.dart';
part 'model/place_links.dart';
part 'model/place_links_children.dart';
part 'model/place_links_children_iri_template.dart';
part 'model/place_links_children_iri_template_mapping.dart';
part 'model/place_links_geo.dart';
part 'model/place_links_geo_iri_template.dart';
part 'model/place_links_organization.dart';
part 'model/place_links_organization_iri_template.dart';
part 'model/place_links_plans.dart';
part 'model/place_links_plans_iri_template.dart';
part 'model/place_links_self.dart';
part 'model/place_links_self_iri_template.dart';
part 'model/place_patch.dart';
part 'model/place_postal_address.dart';
part 'model/place_preferences.dart';
part 'model/place_type_workflow.dart';
part 'model/plan.dart';
part 'model/plan_collection.dart';
part 'model/plan_data.dart';
part 'model/plan_links.dart';
part 'model/plan_links_image.dart';
part 'model/plan_links_image_iri_template.dart';
part 'model/plan_links_place.dart';
part 'model/plan_links_place_iri_template.dart';
part 'model/plan_links_self.dart';
part 'model/plan_links_self_iri_template.dart';
part 'model/plan_patch.dart';
part 'model/point.dart';
part 'model/polygon.dart';
part 'model/preferences_electronic_signature.dart';
part 'model/preferences_form.dart';
part 'model/preferences_notification.dart';
part 'model/preferences_reference.dart';
part 'model/problem.dart';
part 'model/problem_embedded.dart';
part 'model/procedure.dart';
part 'model/procedure_data.dart';
part 'model/procedure_embedded.dart';
part 'model/procedure_links.dart';
part 'model/procedure_links_document.dart';
part 'model/procedure_links_document_iri_template.dart';
part 'model/procedure_links_self.dart';
part 'model/procedure_links_self_iri_template.dart';
part 'model/procedure_workflow_data.dart';
part 'model/property_condition_list.dart';
part 'model/property_items.dart';
part 'model/publication.dart';
part 'model/publication_collection.dart';
part 'model/publication_data.dart';
part 'model/publication_embedded.dart';
part 'model/publication_links.dart';
part 'model/publication_links_author.dart';
part 'model/publication_links_author_iri_template.dart';
part 'model/publication_links_feed.dart';
part 'model/publication_links_feed_iri_template.dart';
part 'model/publication_links_organization.dart';
part 'model/publication_links_organization_iri_template.dart';
part 'model/publication_links_self.dart';
part 'model/publication_links_self_iri_template.dart';
part 'model/publication_links_self_iri_template_mapping.dart';
part 'model/register_data.dart';
part 'model/register_data_agreement.dart';
part 'model/report.dart';
part 'model/report_collection.dart';
part 'model/report_embedded.dart';
part 'model/report_links.dart';
part 'model/report_links_category.dart';
part 'model/report_links_category_iri_template.dart';
part 'model/report_links_children.dart';
part 'model/report_links_children_iri_template.dart';
part 'model/report_links_children_iri_template_mapping.dart';
part 'model/report_links_feedback.dart';
part 'model/report_links_feedback_iri_template.dart';
part 'model/report_links_operations.dart';
part 'model/report_links_operations_iri_template.dart';
part 'model/report_links_organization.dart';
part 'model/report_links_organization_iri_template.dart';
part 'model/report_links_place.dart';
part 'model/report_links_place_iri_template.dart';
part 'model/report_links_self.dart';
part 'model/report_links_self_iri_template.dart';
part 'model/report_links_tracking.dart';
part 'model/report_links_tracking_iri_template.dart';
part 'model/report_priority.dart';
part 'model/report_type_priority.dart';
part 'model/report_type_workflow.dart';
part 'model/reset_password_data.dart';
part 'model/review.dart';
part 'model/review_collection.dart';
part 'model/review_data.dart';
part 'model/review_links.dart';
part 'model/review_links_author.dart';
part 'model/review_links_author_iri_template.dart';
part 'model/review_links_item_reviewed.dart';
part 'model/review_links_item_reviewed_iri_template.dart';
part 'model/review_links_self.dart';
part 'model/review_links_self_iri_template.dart';
part 'model/review_links_self_iri_template_mapping.dart';
part 'model/review_request.dart';
part 'model/review_request_collection.dart';
part 'model/review_request_embedded.dart';
part 'model/review_request_links.dart';
part 'model/review_request_links_item_to_review.dart';
part 'model/review_request_links_item_to_review_iri_template.dart';
part 'model/review_request_links_item_to_review_iri_template_mapping.dart';
part 'model/review_request_links_organization.dart';
part 'model/review_request_links_organization_iri_template.dart';
part 'model/review_request_links_review.dart';
part 'model/review_request_links_review_iri_template.dart';
part 'model/review_request_links_reviewer.dart';
part 'model/review_request_links_reviewer_iri_template.dart';
part 'model/review_request_links_self.dart';
part 'model/review_request_links_self_iri_template.dart';
part 'model/review_request_links_self_iri_template_mapping.dart';
part 'model/role.dart';
part 'model/rule.dart';
part 'model/rule_collection.dart';
part 'model/rule_data.dart';
part 'model/rule_embedded.dart';
part 'model/rule_links.dart';
part 'model/rule_links_self.dart';
part 'model/rule_links_self_iri_template.dart';
part 'model/rule_links_self_iri_template_mapping.dart';
part 'model/rule_patch.dart';
part 'model/run.dart';
part 'model/run_data.dart';
part 'model/schema.dart';
part 'model/schema_property.dart';
part 'model/section.dart';
part 'model/section_collection.dart';
part 'model/section_links.dart';
part 'model/section_links_self.dart';
part 'model/section_links_self_iri_template.dart';
part 'model/service.dart';
part 'model/service_collection.dart';
part 'model/service_contact_point.dart';
part 'model/service_member_data.dart';
part 'model/service_postal_address.dart';
part 'model/signature_data.dart';
part 'model/signature_signer.dart';
part 'model/signer.dart';
part 'model/signer_collection.dart';
part 'model/signer_data.dart';
part 'model/signer_links.dart';
part 'model/signer_links_procedure.dart';
part 'model/signer_links_procedure_iri_template.dart';
part 'model/signer_links_self.dart';
part 'model/signer_links_self_iri_template.dart';
part 'model/signer_links_self_iri_template_mapping.dart';
part 'model/signer_signature.dart';
part 'model/state.dart';
part 'model/success_login.dart';
part 'model/success_login_credentials.dart';
part 'model/task_patch.dart';
part 'model/template.dart';
part 'model/template_collection.dart';
part 'model/template_data.dart';
part 'model/template_patch.dart';
part 'model/tracking.dart';
part 'model/tracking_checkpoint.dart';
part 'model/tracking_progression.dart';
part 'model/transition_state.dart';
part 'model/workflow.dart';
part 'model/workflow_data.dart';
part 'model/workflow_links.dart';
part 'model/workflow_links_self.dart';
part 'model/workflow_links_self_iri_template.dart';
part 'model/workflow_links_self_iri_template_mapping.dart';
part 'model/workflow_state.dart';
part 'model/workflow_transition.dart';
part 'model/article_pagination.dart';
part 'model/assignment_pagination.dart';
part 'model/binary_pagination.dart';
part 'model/bookmark_pagination.dart';
part 'model/business_activity_pagination.dart';
part 'model/category_pagination.dart';
part 'model/contribution_pagination.dart';
part 'model/document_pagination.dart';
part 'model/external_service_pagination.dart';
part 'model/feedback_pagination.dart';
part 'model/internal_service_pagination.dart';
part 'model/member_pagination.dart';
part 'model/occupant_pagination.dart';
part 'model/operation_pagination.dart';
part 'model/organization_pagination.dart';
part 'model/place_pagination.dart';
part 'model/plan_pagination.dart';
part 'model/publication_pagination.dart';
part 'model/report_pagination.dart';
part 'model/review_pagination.dart';
part 'model/review_request_pagination.dart';
part 'model/rule_pagination.dart';
part 'model/section_pagination.dart';
part 'model/service_pagination.dart';
part 'model/signer_pagination.dart';
part 'model/template_pagination.dart';

ApiClient defaultApiClient = ApiClient();
