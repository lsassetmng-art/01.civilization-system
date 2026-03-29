# ============================================================
# CIVIL SERVICE DISQUALIFICATION RULE MODEL
# ============================================================

status: canonical
layer: model
scope: civil-service-eligibility
component: civil-service-disqualification-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. DISQUALIFICATION THEMES
# ============================================================

disqualification_themes:
- non_human_category
- severe_criminal_status
- active_rebellion_status
- prohibited_loyalty_status
- forbidden_ideology_status
- revoked_citizenship_status
- explicit_nation_rule_block
- bloodline_restriction_for_specific_office


# ============================================================
# 2. FINAL RULE
# ============================================================

Disqualification rules
must be explicit,
not inferred informally.
