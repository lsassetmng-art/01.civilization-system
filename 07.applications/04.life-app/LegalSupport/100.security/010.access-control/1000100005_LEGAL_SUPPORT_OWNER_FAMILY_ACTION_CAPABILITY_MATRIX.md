# ============================================================
# LEGAL SUPPORT OWNER FAMILY ACTION CAPABILITY MATRIX
# ============================================================

status: draft-formal
system: LegalSupport
layer: security
subdomain: access-control
schema: life

purpose:
  - owner と shared_family_viewer の操作可能範囲を action 単位で固定する
  - 共有対象の閲覧と管理操作を明確に分離する
  - UI / API / audit の共通正本として使う

roles:
  - owner
  - shared_family_viewer
  - professional_share_target_future

capability_matrix:

  legal_case:
    create_case:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    update_case:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    archive_case:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    reopen_case:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    duplicate_case:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny

  fact_timeline:
    create_fact_timeline:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    update_fact_timeline:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    reorder_fact_timeline:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    view_fact_timeline:
      owner: allow
      shared_family_viewer: allow_selected_only
      professional_share_target_future: future_only

  stakeholder:
    create_stakeholder:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    update_stakeholder:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    view_stakeholder:
      owner: allow
      shared_family_viewer: allow_family_visible_only
      professional_share_target_future: future_only

  document_item:
    create_document_item:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    update_document_item:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    mark_document_verified:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    view_document_item:
      owner: allow
      shared_family_viewer: allow_shared_flag_only
      professional_share_target_future: future_only

  question_list:
    create_question:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    update_question:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    view_question:
      owner: allow
      shared_family_viewer: allow_selected_only
      professional_share_target_future: future_only

  consultation_note:
    create_consultation_note:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    update_consultation_note:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    view_consultation_note:
      owner: allow
      shared_family_viewer: allow_summary_selected_only
      professional_share_target_future: future_only

  action_deadline:
    create_action_item:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    update_action_item:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    create_deadline_item:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    update_deadline_item:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    view_action_deadline:
      owner: allow
      shared_family_viewer: allow_selected_only
      professional_share_target_future: future_only

  expense_record:
    create_expense_record:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    update_expense_record:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    view_expense_record:
      owner: allow
      shared_family_viewer: deny_default
      professional_share_target_future: allow_future_profile_only

  family_share:
    invite_family_member:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    revoke_family_membership:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny
    accept_family_invitation:
      owner: deny
      shared_family_viewer: self_only
      professional_share_target_future: deny
    decline_family_invitation:
      owner: deny
      shared_family_viewer: self_only
      professional_share_target_future: deny
    view_family_membership:
      owner: allow
      shared_family_viewer: deny
      professional_share_target_future: deny

  export_summary_handoff:
    generate_case_summary:
      owner: allow_plus_family
      shared_family_viewer: deny
      professional_share_target_future: deny
    generate_question_summary:
      owner: allow_plus_family
      shared_family_viewer: deny
      professional_share_target_future: deny
    generate_consultation_prep_packet:
      owner: allow_plus_family
      shared_family_viewer: deny
      professional_share_target_future: deny
    create_export_bundle:
      owner: allow_plus_family
      shared_family_viewer: deny
      professional_share_target_future: deny
    create_cross_app_handoff:
      owner: allow_explicit_confirm
      shared_family_viewer: deny
      professional_share_target_future: deny

capability_rules:
  - shared_family_viewer に編集系 capability は与えない
  - owner only actions は UI と API の両方で制御する
  - family 側は active membership が前提
  - plus_family gating がある action は plan check を前段で行う
