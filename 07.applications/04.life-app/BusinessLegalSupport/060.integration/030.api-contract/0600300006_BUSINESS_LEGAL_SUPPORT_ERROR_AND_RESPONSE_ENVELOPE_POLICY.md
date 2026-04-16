# ============================================================
# BUSINESS LEGAL SUPPORT ERROR AND RESPONSE ENVELOPE POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 060.integration
subfolder: 030.api-contract
owner: Boss
prepared_by: Zero

success_response_policy:
  - resource responses may return plain resource object
  - list responses return object with items
  - envelope forcing is not mandatory at this design stage

error_response_shape:
  json: |
    {
      "error": {
        "code": "not_found",
        "message": "Legal issue not found.",
        "details": null
      }
    }

standard_error_codes:
  - invalid_request
  - unauthorized
  - forbidden
  - not_found
  - conflict
  - validation_failed
  - soft_deleted
  - share_scope_invalid

usage_rules:
  - not_found for missing or inaccessible resource in default read paths
  - forbidden for valid auth but disallowed action
  - validation_failed for field rule violations
  - conflict for incompatible state transitions
  - soft_deleted may be used only when explicit deleted-resource handling is needed

validation_examples:
  - title missing on create_legal_issue
  - due_at missing on create_deadline_record
  - share_scope missing on create_advisor_share_record
  - issue_id not owned by current user
