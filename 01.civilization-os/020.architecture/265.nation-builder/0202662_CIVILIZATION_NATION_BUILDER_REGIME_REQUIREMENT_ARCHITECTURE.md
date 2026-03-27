# ============================================================
# CIVILIZATION NATION BUILDER REGIME REQUIREMENT ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official requirement architecture
for regime bundles inside CivilizationOS nation builder.

This architecture covers:
- mandatory regime bundles
- recommended regime bundles
- optional regime bundles
- conditionally mandatory regime bundles
- validation impact by requirement level


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Nation builder must not treat all regime bundles equally.

Each regime bundle must have an explicit requirement level:
- mandatory
- recommended
- optional
- conditional_mandatory

Core principle:

requirement level determines
validation severity and publish readiness impact


# ============================================================
# 2. VALIDATION PRINCIPLE
# ============================================================

Requirement levels should map to validation behavior.

mandatory:
- blocking if missing

conditional_mandatory:
- blocking if trigger condition is satisfied and bundle is missing

recommended:
- warning if missing

optional:
- informational only if missing


# ============================================================
# 3. CONDITION PRINCIPLE
# ============================================================

Some regime bundles become mandatory
depending on nation configuration.

Examples:
- securities regime becomes conditional_mandatory
  when listing market tiers are enabled
- religion-related governance bundle becomes conditional_mandatory
  when religious-state governance is selected
- zoning bundle becomes mandatory when opening/store operation is enabled


# ============================================================
# 4. FINAL ARCHITECTURAL RULE
# ============================================================

Regime requirement architecture in CivilizationOS must be:
- requirement-aware
- validation-aware
- publish-readiness-aware
- explicit in conditional triggers
