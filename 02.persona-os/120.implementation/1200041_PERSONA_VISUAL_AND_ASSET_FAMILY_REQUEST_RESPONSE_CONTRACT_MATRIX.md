# PERSONA VISUAL AND ASSET FAMILY REQUEST RESPONSE CONTRACT MATRIX

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_122151

purpose:
Fixes request and response contracts for the visual and asset family.

visual_job_create_request:
  required_fields:
    - persona_id or subject reference
    - job_type
    - requested_by
    - visual_input_payload
  optional_fields:
    - template_reference
    - style_hint
    - request_trace_id

visual_job_create_response:
  required_fields:
    - visual_job_id
    - job_status
    - created_at

visual_compose_request:
  required_fields:
    - visual_job_id or manifest input reference
    - compose_context
  optional_fields:
    - output_profile

visual_compose_response:
  required_fields:
    - compose_status
    - manifest_reference or compose_output_reference
    - composed_at

visual_upload_request:
  required_fields:
    - upload_subject_reference
    - upload_context
    - uploaded_by
  optional_fields:
    - manifest_reference
    - checksum

visual_upload_response:
  required_fields:
    - upload_status
    - asset_reference or upload_reference
    - uploaded_at

persona_auto_generate_part_request:
  required_fields:
    - generation_subject_reference
    - part_type
    - generation_context

persona_auto_generate_part_response:
  required_fields:
    - generation_job_or_asset_reference
    - generation_status
    - created_at

persona_build_manifest_request:
  required_fields:
    - persona_or_asset_reference
    - build_context

persona_build_manifest_response:
  required_fields:
    - manifest_reference
    - manifest_status
    - built_at

persona_background_get_signed_urls_request:
  required_fields:
    - background_asset_reference
    - requester_context

persona_background_get_signed_urls_response:
  required_fields:
    - signed_url_list or signed_url_reference
    - url_status
    - expires_at

contract_rule:
No visual or asset family response may imply released status unless release lineage and policy conditions are satisfied.

