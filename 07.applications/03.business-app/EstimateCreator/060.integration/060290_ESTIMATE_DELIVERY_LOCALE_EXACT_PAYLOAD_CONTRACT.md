# ============================================================
# ESTIMATE DELIVERY LOCALE EXACT PAYLOAD CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes exact request / response payloads
for multilingual, multicurrency-display,
customer delivery,
and customer response operations.

Principles:
- field names remain English-fixed
- locale affects display/output only
- customer delivery is distinct from ERP publication
- readonly links never imply write capability
- customer response is manual-record based in current phase

# ============================================================
# 2. COMMON RESPONSE ENVELOPE
# ============================================================

response_envelope:
  success: boolean
  code: string
  message: string
  data: object|null
  error:
    field: string|null
    detail: string|null

# ============================================================
# 3. UI LOCALE RESOLVE
# ============================================================

operation:
- resolve_ui_locale

request:
  user_id: string
  requested_locale: string|null
  system_locale: string|null

response_success:
  success: true
  code: UI_LOCALE_RESOLVED
  message: UI locale resolved
  data:
    ui_locale: string
    fallback_applied: boolean

# ============================================================
# 4. CUSTOMER PREFERRED LOCALE SAVE
# ============================================================

operation:
- save_customer_preferred_locale

request:
  customer_id: string
  preferred_locale_code: string

response_success:
  success: true
  code: CUSTOMER_PREFERRED_LOCALE_SAVED
  message: Customer preferred locale saved
  data:
    customer_id: string
    preferred_locale_code: string
    updated_at: string

# ============================================================
# 5. CUSTOMER PREFERRED CURRENCY SAVE
# ============================================================

operation:
- save_customer_preferred_currency

request:
  customer_id: string
  preferred_currency_code: string

response_success:
  success: true
  code: CUSTOMER_PREFERRED_CURRENCY_SAVED
  message: Customer preferred currency saved
  data:
    customer_id: string
    preferred_currency_code: string
    updated_at: string

# ============================================================
# 6. DELIVERY PDF EXPORT
# ============================================================

operation:
- export_estimate_pdf

request:
  estimate_id: string
  export_locale: string
  delivery_currency_code: string
  template_locale_variant_id: string|null
  proposal_summary_template_id: string|null

response_success:
  success: true
  code: ESTIMATE_PDF_EXPORTED
  message: Estimate PDF exported
  data:
    delivery_record_id: string
    delivery_channel: pdf_export
    delivery_state: sent
    pdf_artifact_id: string
    export_locale: string
    delivery_currency_code: string
    presented_at: string

response_failure:
  success: false
  code: ESTIMATE_PDF_EXPORT_FAILED
  message: Estimate PDF export failed
  data: null
  error:
    field: estimate_id|export_locale|null
    detail: export failed or invalid locale/template input

# ============================================================
# 7. DELIVERY EMAIL SEND
# ============================================================

operation:
- send_estimate_email

request:
  estimate_id: string
  email_target: string
  delivery_locale: string
  delivery_currency_code: string
  subject_template_key: string|null
  body_template_key: string|null
  template_locale_variant_id: string|null
  proposal_summary_template_id: string|null

response_success:
  success: true
  code: ESTIMATE_EMAIL_SENT
  message: Estimate email sent
  data:
    delivery_record_id: string
    delivery_channel: email
    delivery_state: sent
    email_target: string
    delivery_locale: string
    delivery_currency_code: string
    presented_at: string

response_failure:
  success: false
  code: ESTIMATE_EMAIL_SEND_FAILED
  message: Estimate email send failed
  data: null
  error:
    field: email_target|string|null
    detail: invalid target or delivery failure

# ============================================================
# 8. READONLY LINK CREATE
# ============================================================

operation:
- create_estimate_readonly_link

request:
  estimate_id: string
  delivery_locale: string
  delivery_currency_code: string
  expires_at: string|null

response_success:
  success: true
  code: ESTIMATE_READONLY_LINK_CREATED
  message: Readonly link created
  data:
    delivery_record_id: string
    link_id: string
    delivery_channel: readonly_link
    delivery_state: sent
    readonly: true
    expires_at: string|null
    presented_at: string

response_failure:
  success: false
  code: ESTIMATE_READONLY_LINK_CREATE_FAILED
  message: Readonly link creation failed
  data: null
  error:
    field: estimate_id|null
    detail: invalid estimate or link generation failure

# ============================================================
# 9. READONLY LINK REVOKE
# ============================================================

operation:
- revoke_estimate_readonly_link

request:
  link_id: string

response_success:
  success: true
  code: ESTIMATE_READONLY_LINK_REVOKED
  message: Readonly link revoked
  data:
    link_id: string
    link_state: revoked
    revoked_at: string

# ============================================================
# 10. DELIVERY HISTORY LOAD
# ============================================================

operation:
- load_estimate_delivery_history

request:
  estimate_id: string

response_success:
  success: true
  code: ESTIMATE_DELIVERY_HISTORY_READY
  message: Estimate delivery history loaded
  data:
    items:
      - delivery_record_id: string
        delivery_channel: pdf_export|email|readonly_link
        delivery_state: not_sent|sent|delivery_failed|opened|expired
        delivery_locale: string
        delivery_currency_code: string
        presented_total_amount: number|null
        presented_at: string
        email_target: string|null
        readonly_link_id: string|null
        pdf_artifact_id: string|null

# ============================================================
# 11. OPEN LOG LOAD
# ============================================================

operation:
- load_estimate_open_logs

request:
  estimate_id: string

response_success:
  success: true
  code: ESTIMATE_OPEN_LOGS_READY
  message: Estimate open logs loaded
  data:
    items:
      - open_log_id: string
        link_id: string|null
        opened_at: string
        viewer_type: string|null
        locale: string|null
        device_hint: string|null
        ip_hint_if_allowed: string|null

# ============================================================
# 12. CUSTOMER RESPONSE SAVE
# ============================================================

operation:
- save_estimate_customer_response

request:
  estimate_id: string
  customer_response_state: no_response|accepted|revision_requested|rejected
  response_note: string|null
  responded_at: string|null

response_success:
  success: true
  code: ESTIMATE_CUSTOMER_RESPONSE_SAVED
  message: Estimate customer response saved
  data:
    customer_response_id: string
    estimate_id: string
    customer_response_state: string
    responded_at: string|null
    updated_at: string

# ============================================================
# 13. TEMPLATE LOCALE VARIANT LOAD
# ============================================================

operation:
- load_template_locale_variants

request:
  template_id: string
  locale_code: string|null
  industry_category_code: string|null

response_success:
  success: true
  code: TEMPLATE_LOCALE_VARIANTS_READY
  message: Template locale variants loaded
  data:
    items:
      - template_locale_variant_id: string
        template_id: string
        locale_code: string
        localized_template_name: string
        localized_summary_text: string|null
        industry_category_code: string|null
        is_enabled: boolean

# ============================================================
# 14. PROPOSAL SUMMARY TEMPLATE APPLY
# ============================================================

operation:
- apply_proposal_summary_template

request:
  estimate_id: string
  proposal_summary_template_id: string

response_success:
  success: true
  code: PROPOSAL_SUMMARY_TEMPLATE_APPLIED
  message: Proposal summary template applied
  data:
    estimate_id: string
    proposal_summary_template_id: string
    sync_state: local_only|pending_push
    updated_at: string

