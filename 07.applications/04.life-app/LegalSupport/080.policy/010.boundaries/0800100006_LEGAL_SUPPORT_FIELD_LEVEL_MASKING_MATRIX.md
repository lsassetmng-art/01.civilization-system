# ============================================================
# LEGAL SUPPORT FIELD LEVEL MASKING MATRIX
# ============================================================

status: draft-formal
system: LegalSupport
layer: policy
subdomain: boundaries
schema: life

principles:
  - field 単位で owner / family / professional_future の可視範囲を分ける
  - mask は export と dashboard の両方に適用可能な正本とする
  - private note / assumption / internal control 項目は最小公開を基本とする

masking_matrix:

  legal_case:
    owner_visible:
      - title
      - category
      - status
      - priority
      - summary
      - visibility_scope
      - family_share_enabled
      - primary_app_route
    family_visible:
      - title
      - category
      - status
      - priority
      - summary
    professional_future_visible:
      - title
      - category
      - status
      - priority
      - summary

  fact_timeline:
    owner_visible:
      - event_date
      - event_date_precision
      - event_type
      - fact_text
      - assumption_text
      - source_note
      - verification_status
    family_visible:
      - event_date
      - event_date_precision
      - event_type
      - fact_text
      - verification_status
    professional_future_visible:
      - event_date
      - event_date_precision
      - event_type
      - fact_text
      - verification_status

  stakeholder:
    owner_visible:
      - stakeholder_type
      - display_name
      - relation_to_case
      - contact_note
      - share_visibility
    family_visible:
      - stakeholder_type
      - display_name
      - relation_to_case
    professional_future_visible:
      - stakeholder_type
      - display_name
      - relation_to_case

  document_item:
    owner_visible:
      - document_category
      - document_subcategory
      - document_name
      - possession_status
      - submission_status
      - important_flag
      - shared_flag
      - issuer_name
      - issued_on
      - valid_until
      - related_person_name
      - external_reference
      - storage_location_note
      - confidentiality_level
      - acquisition_due_date
      - submission_due_date
      - last_verified_at
      - verification_note
      - note
    family_visible:
      - document_category
      - document_subcategory
      - document_name
      - possession_status
      - submission_status
      - important_flag
      - issuer_name
      - issued_on
      - valid_until
      - related_person_name
    professional_future_visible:
      - document_category
      - document_subcategory
      - document_name
      - possession_status
      - submission_status
      - important_flag
      - issuer_name
      - issued_on
      - valid_until
      - related_person_name
      - external_reference

  question_list:
    owner_visible:
      - question_text
      - question_status
      - priority
      - asked_at
      - answered_at
      - note
    family_visible:
      - question_text_selected
      - question_status
      - priority
    professional_future_visible:
      - question_text
      - question_status
      - priority

  consultation_note:
    owner_visible:
      - consultation_type
      - consultation_date
      - counterpart_name
      - summary
      - pending_items
      - next_confirmation_points
    family_visible:
      - consultation_type
      - consultation_date
      - summary_selected
    professional_future_visible:
      - consultation_type
      - consultation_date
      - counterpart_name
      - summary

  action_item:
    owner_visible:
      - title
      - action_status
      - assignee_type
      - due_date
      - note
    family_visible:
      - title
      - action_status
      - due_date
    professional_future_visible:
      - title
      - action_status
      - due_date

  deadline_item:
    owner_visible:
      - deadline_type
      - deadline_date
      - urgency_level
      - notification_enabled
      - note
    family_visible:
      - deadline_type
      - deadline_date
      - urgency_level
    professional_future_visible:
      - deadline_type
      - deadline_date
      - urgency_level

  expense_record:
    owner_visible:
      - expense_type
      - amount
      - currency_code
      - paid_at
      - note
    family_visible:
      - none_by_default
    professional_future_visible:
      - expense_type
      - amount
      - currency_code
      - paid_at

  family_share_membership:
    owner_visible:
      - invited_user_id
      - invite_channel_type
      - invite_target_label
      - membership_status
      - permission_role
      - invited_at
      - accepted_at
      - revoked_at
    family_visible:
      - none
    professional_future_visible:
      - none

rules:
  - confidentiality_level=private の document は family_visible から除外優先
  - assumption_text は owner only が基本
  - expense_record は family default hidden
  - note suffix の自由記述は family/professional では最小公開を原則とする
