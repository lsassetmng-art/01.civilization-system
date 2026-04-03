# ============================================================
# CATCH PRESERVATION AND PROCESSING MODEL
# ============================================================

status: canonical
layer: model
scope: fishery-work-ui
component: catch-preservation-and-processing

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CATCH FIELDS
# ============================================================

catch_fields:
- catch_record_id
- species_type
- raw_quantity
- quality_tier
- spoilage_risk
- processing_value
- fresh_market_value
- preservation_need
- ceremonial_or_festival_value


# ============================================================
# 2. PROCESSING ACTIONS
# ============================================================

processing_actions:
- sort_by_quality
- send_to_fresh_market
- send_to_local_market
- preserve_with_ice
- dry_or_salt_preserve
- send_to_processing_facility
- reserve_for_ritual_or_festival_use
- emergency_food_distribution


# ============================================================
# 3. PRESERVATION RULES
# ============================================================

preservation_rules:
- insufficient_preservation_capacity increases_spoilage_risk
- late_return increases_quality_loss
- skilled_preservation_crew lowers_quality_decay
- rough_weather may damage catch value
- processing choice changes market timing and margin profile


# ============================================================
# 4. FINAL RULE
# ============================================================

Catch handling must expose
that the catch is not the result;
usable value is the result.
