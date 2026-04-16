# ============================================================
# END OF LIFE PLANNER VALIDATION RULES
# ============================================================

status: canonical-draft
phase: L1-spec-placement

validation_rules:
  - display_name must_not_be_blank
  - birth_date future_date_not_allowed
  - priority_order integer_min_1
  - estimated_cost_amount must_be_positive_if_present
  - estimated_cost_currency ISO4217_if_present
  - location_hint_note must_not_match_password_like_pattern
  - account_identifier_hint must_not_include_full_password
  - digital_asset_note export requires masking
