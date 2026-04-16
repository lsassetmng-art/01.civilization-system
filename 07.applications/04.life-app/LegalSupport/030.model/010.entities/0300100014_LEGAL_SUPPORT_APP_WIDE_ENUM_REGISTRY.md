# ============================================================
# LEGAL SUPPORT APP WIDE ENUM REGISTRY
# ============================================================

status: draft-formal
system: LegalSupport
layer: model
subdomain: entities
schema: life

purpose:
  - アプリ全体で使う主要 enum を一箇所に集約する
  - field matrix / payload / UI filter / validation の正本を合わせる
  - 実装前に enum の揺れを止める

enum_registry:

  legal_case.category:
    - family
    - inheritance
    - divorce
    - neighborhood
    - contract
    - consumer
    - debt
    - labor
    - housing
    - accident
    - end_of_life
    - other

  legal_case.status:
    - draft
    - active
    - on_hold
    - completed
    - archived

  legal_case.priority:
    - low
    - medium
    - high
    - urgent

  legal_case.visibility_scope:
    - private
    - family_shared

  legal_case.primary_app_route:
    - legal_support
    - inheritance_support
    - business_legal_support
    - end_of_life_planner

  fact_timeline.event_date_precision:
    - exact_date
    - month_only
    - year_only
    - estimated
    - unknown

  fact_timeline.event_type:
    - consultation
    - incident
    - communication
    - filing
    - payment
    - contract
    - family_event
    - other

  fact_timeline.verification_status:
    - confirmed
    - unverified
    - disputed

  stakeholder.stakeholder_type:
    - self
    - family
    - counterpart
    - lawyer
    - advisor
    - organization
    - other

  stakeholder.share_visibility:
    - private
    - family_visible

  document_item.document_category:
    - id
    - contract
    - letter
    - receipt
    - certificate
    - family_record
    - property_record
    - consultation_material
    - other

  document_item.possession_status:
    - have
    - need_to_get
    - unavailable

  document_item.submission_status:
    - not_required
    - pending
    - submitted

  document_item.confidentiality_level:
    - normal
    - sensitive
    - private

  question_list.question_status:
    - open
    - asked
    - answered
    - on_hold

  consultation_note.consultation_type:
    - in_person
    - phone
    - chat
    - email
    - internal_note
    - other

  action_item.action_status:
    - open
    - in_progress
    - done
    - cancelled

  action_item.assignee_type:
    - self
    - family
    - professional
    - other

  deadline_item.deadline_type:
    - consultation
    - submission
    - response
    - payment
    - reminder
    - other

  deadline_item.urgency_level:
    - low
    - medium
    - high
    - urgent

  expense_record.expense_type:
    - consultation_fee
    - document_fee
    - filing_fee
    - travel_cost
    - other

  expense_record.currency_code:
    - JPY
    - USD
    - EUR
    - GBP
    - CNY
    - other

  export_bundle.export_type:
    - pdf
    - summary

  export_bundle.target_scope:
    - self
    - family
    - professional_future

  family_share_membership.invite_channel_type:
    - internal_user
    - external_placeholder
    - family_slot

  family_share_membership.membership_status:
    - invited
    - active
    - declined
    - revoked
    - expired

  family_share_membership.permission_role:
    - shared_family_viewer

  notification_preference.notification_type:
    - deadline_pre_alert
    - same_day_alert
    - unresolved_document_alert
    - next_consultation_reminder
    - family_share_update_alert
    - weekly_digest

  notification_preference.delivery_mode:
    - in_app
    - push
    - in_app_and_push

  notification_preference.timing_profile:
    - minimal
    - standard
    - intensive

notes:
  - field matrix と enum registry が衝突した場合は enum registry を優先見直し対象にする
  - UI filter value はこの registry に合わせる
