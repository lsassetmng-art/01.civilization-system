# ============================================================
# BUSINESS LEGAL SUPPORT EXPORT AND SHARE ACCESS POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 100.security
subfolder: 020.access-control
owner: Boss
prepared_by: Zero

export_policy:
  allowed_actor:
    - owner
  denied_actor:
    - advisor_viewer

export_types:
  - consultation_summary_export
  - issue_summary_export
  - selected_record_export

share_policy:
  allowed_actor:
    - owner
  denied_actor:
    - advisor_viewer

share_requirements:
  - issue_id required
  - share_scope required
  - explicit confirmation required
  - destination label or intended audience required

hard_rules:
  - export is not formal legal opinion
  - share is read-only in current design
  - share cannot be chained by advisor_viewer
  - export cannot imply enterprise archival truth
