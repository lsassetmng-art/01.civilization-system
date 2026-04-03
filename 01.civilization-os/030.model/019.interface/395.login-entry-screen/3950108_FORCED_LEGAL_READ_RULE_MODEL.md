# ============================================================
# FORCED LEGAL READ RULE MODEL
# ============================================================

status: canonical
layer: model
scope: login-entry-screen
component: forced-legal-read-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. TRIGGER CONDITIONS
# ============================================================

trigger_conditions:
- first_launch_if_required
- legal_revision_if_required
- region_specific_requirement
- registration_specific_requirement
- story_mode_specific_requirement


# ============================================================
# 2. RULES
# ============================================================

rules:
- forced legal read is not always required
- forced legal read is activated only when obligation exists
- forced legal read may require scroll completion or explicit acknowledgment
- ordinary legal browsing must remain optional when obligation does not exist


# ============================================================
# 3. FINAL RULE
# ============================================================

Legal obligation flows
must remain separate from ordinary login
and ordinary registration
unless mandatory by rule.
