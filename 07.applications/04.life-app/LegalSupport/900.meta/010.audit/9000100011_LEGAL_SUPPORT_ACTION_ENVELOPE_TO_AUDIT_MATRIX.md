# ============================================================
# LEGAL SUPPORT ACTION ENVELOPE TO AUDIT MATRIX
# ============================================================

status: draft-formal
system: LegalSupport
layer: meta
subdomain: audit
schema: life

purpose:
  - final lock した action 名と audit action を接続する
  - success/failure 時の基本 audit 方針を合わせる
  - preview と actual mutation の扱いを明確にする

matrix:

  create_legal_case:
    audit_on_success: true
    audit_on_failure: optional
    severity: medium

  update_legal_case:
    audit_on_success: true
    audit_on_failure: optional
    severity: medium

  archive_legal_case:
    audit_on_success: true
    audit_on_failure: true
    severity: high

  reopen_legal_case:
    audit_on_success: true
    audit_on_failure: true
    severity: high

  create_export_bundle:
    audit_on_success: true
    audit_on_failure: optional
    severity: high

  invite_family_member:
    audit_on_success: true
    audit_on_failure: true
    severity: high

  accept_family_invitation:
    audit_on_success: true
    audit_on_failure: optional
    severity: medium

  revoke_family_membership:
    audit_on_success: true
    audit_on_failure: true
    severity: high

  preview_cross_app_handoff:
    audit_on_success: true
    audit_on_failure: optional
    severity: low
    preview_only: true

  create_cross_app_handoff:
    audit_on_success: true
    audit_on_failure: true
    severity: high
    preview_only: false

rules:
  - destructive / share / export / handoff は audit 強制対象
  - preview は lightweight audit を許可
  - failure audit は security / state conflict 系を優先する
