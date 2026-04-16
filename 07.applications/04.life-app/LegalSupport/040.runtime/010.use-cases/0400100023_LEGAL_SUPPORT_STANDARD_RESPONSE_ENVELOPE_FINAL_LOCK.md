# ============================================================
# LEGAL SUPPORT STANDARD RESPONSE ENVELOPE FINAL LOCK
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

purpose:
  - success response の共通 envelope を固定する
  - entity response / list response / preview response / mutation response の形を揃える
  - screen 実装時の接続コストを下げる

response_envelope_principles:
  - action は response に必ず返す
  - success は boolean で返す
  - data を主 payload 格納先にする
  - message は任意
  - meta は paging / counts / timing など補助に限定する
  - errors は success=false のときのみ返す

base_success_envelope:
  action: string
  success: true
  data: object
  message: string|null
  meta: object|null

base_error_envelope:
  action: string
  success: false
  data: null
  message: string
  errors:
    - code: string
      field: string|null
      detail: string|null
  meta: object|null

response_shapes:

  entity_create_or_update:
    envelope:
      action: string
      success: true
      data:
        entity_name: object
      message: string|null
      meta:
        updated_at: timestamptz|null

  list_response:
    envelope:
      action: string
      success: true
      data:
        items:
          - object
      message: string|null
      meta:
        total_count: integer
        page: integer|null
        per_page: integer|null

  detail_response:
    envelope:
      action: string
      success: true
      data:
        entity_name: object
        related_summary: object|null
      message: string|null
      meta: null_or_object

  preview_response:
    envelope:
      action: string
      success: true
      data:
        preview_profile: string|null
        preview: object
      message: string|null
      meta:
        masked_count: integer|null
        warning_count: integer|null

  mutation_response:
    envelope:
      action: string
      success: true
      data:
        result: object
      message: string|null
      meta:
        updated_at: timestamptz|null

standard_examples:

  create_legal_case:
    envelope_shape:
      action: create_legal_case
      success: true
      data:
        legal_case:
          legal_case_id: uuid
          title: string
          category: string
          status: string
          priority: string
      message: null
      meta:
        updated_at: timestamptz

  list_legal_case:
    envelope_shape:
      action: list_legal_case
      success: true
      data:
        items:
          - legal_case_id: uuid
            title: string
            category: string
            status: string
            priority: string
      message: null
      meta:
        total_count: integer
        page: integer
        per_page: integer

  preview_cross_app_handoff:
    envelope_shape:
      action: preview_cross_app_handoff
      success: true
      data:
        preview_profile: handoff_target
        preview:
          target_app: string
          included_sections: array
          payload_preview: object
      message: null
      meta:
        masked_count: integer
        warning_count: integer

normalization_rules:
  - entity 名は data 直下に singular で置く
  - list は data.items に統一する
  - summary/count は meta に置く
  - success=true 時に errors は返さない
