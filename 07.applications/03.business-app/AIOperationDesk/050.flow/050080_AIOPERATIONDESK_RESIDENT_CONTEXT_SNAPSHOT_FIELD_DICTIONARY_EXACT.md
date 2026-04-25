# ============================================================
# AI OPERATION DESK RESIDENT CONTEXT SNAPSHOT FIELD DICTIONARY EXACT
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: flow
owner: Boss
prepared_by: Zero

purpose:
Define the exact semantic meaning of resident context snapshot fields.

entity:
- business.aiod_resident_context_snapshot

field_dictionary:
- resident_context_snapshot_id:
    meaning:
      Unique snapshot identifier.
- source_surface_type:
    meaning:
      Origin surface type.
    allowed_values:
      - erp_resident_surface
      - builder_resident_surface
- supported_app_id:
    meaning:
      Supported app registry reference for the current resident session.
- current_screen_code:
    meaning:
      Canonical code of the screen currently open when snapshot is captured.
- current_module_code:
    meaning:
      Canonical module or functional group code currently active.
- current_record_ref:
    meaning:
      Current focused record reference if present.
- current_field_code:
    meaning:
      Canonical field code currently focused or asked about.
- current_company_ref:
    meaning:
      Company reference active in the current operational context.
- latest_error_code:
    meaning:
      Latest error code visible or bound to the current context.
- entered_value_json:
    meaning:
      Structured values currently entered or staged in the UI.
    rule:
      Store only what is needed for governed explanation, QA, or request creation.
- permission_context_json:
    meaning:
      Structured permission and actor context relevant to the current session.
    rule:
      Used for guidance, gating, and escalation hints, not as final authority truth.
- captured_at:
    meaning:
      Snapshot capture time.

capture_rules:
- snapshot must be lightweight
- snapshot is contextual support data, not canonical transactional truth
- snapshot is allowed only for resident-supported surfaces
- snapshot should not become a raw canonical data mirror
- sensitive detail handling remains subject to AI-side access design

usage_rules:
- explanation mode may use current_screen_code and current_field_code
- error help mode may use latest_error_code
- draft and execution request creation may use current_company_ref and entered_value_json
- permission_context_json may inform guidance but does not replace approval / authority truth
