# ============================================================
# END OF LIFE PLANNER MAIN USER FLOWS
# ============================================================

status: canonical-draft
phase: L1-spec-placement

flows:
  onboarding:
    - eol_onboarding
    - eol_owner_profile
    - eol_emergency_contacts
    - eol_medical_preferences
    - eol_home_dashboard
  family_sharing_setup:
    - eol_sharing_settings
    - share_target_selection
    - scope_selection
    - permission_review
    - invite_send_confirmation
  handoff_pack_generation:
    - eol_handoff_pack
    - handoff_scope_selection
    - masking_configuration
    - preview_output
    - output_execution
  inheritance_gateway:
    - eol_inheritance_gateway
    - InheritanceSupport or LegalSupport
