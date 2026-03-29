# ============================================================
# FACILITY ALBUM ELIGIBILITY MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-history-notice-log
component: facility-album-eligibility

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ALBUM-ELIGIBLE EVENT TYPES
# ============================================================

album_eligible_event_types:
- first_company_headquarters_opened
- first_direct_store_opened
- major_temple_opened
- major_school_opened
- major_medical_complex_opened
- landmark_market_opened
- city_anchor_facility_opened


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

album_eligibility_fields:
- event_type
- facility_type
- album_supported
- album_class
- snapshot_recommended
- memorial_supported
- caption_template_ref


# ============================================================
# 3. FINAL RULE
# ============================================================

Album eligibility should be reserved
for milestone-like openings,
not ordinary routine construction.
