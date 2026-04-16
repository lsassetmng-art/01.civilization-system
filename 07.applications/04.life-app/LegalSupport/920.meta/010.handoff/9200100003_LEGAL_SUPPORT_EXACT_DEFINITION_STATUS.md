# ============================================================
# LEGAL SUPPORT EXACT DEFINITION STATUS
# ============================================================

status: draft-formal
system: LegalSupport
layer: meta
subdomain: handoff

exact_definition_progress:
  schema_binding:
    status: done
  entity_field_matrix:
    status: done
  relation_matrix:
    status: done
  input_ownership_matrix:
    status: done
  request_response_exact_payload:
    status: next
  screen_action_matrix:
    status: next
  validation_rule_matrix:
    status: next

next_recommended_step:
  - API request / response exact payload 固定
  - 画面アクション単位で create / update / archive / export を定義
