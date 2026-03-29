# ============================================================
# HUMAN ONLY OFFICE RULE MODEL
# ============================================================

status: canonical
layer: model
scope: civil-service-eligibility
component: human-only-office-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RULE
# ============================================================

rule:
- offices marked as human_only_office
  may be held only by human_category actors
- human_category actors are user_persona and ai_human
- ai_robot must not hold human_only_office


# ============================================================
# 2. EXAMPLES
# ============================================================

examples:
- civil_service_office
- human_only_public_office
- bloodline_succession_office
- human_only_judicial_office
- human_only_ministerial_office


# ============================================================
# 3. FINAL RULE
# ============================================================

Human-only office restriction
must be explicit and enforceable.
