# ============================================================
# INFRASTRUCTURE GOVERNANCE MODE ENUM MASTER
# ============================================================

status: canonical
layer: model
scope: nation-builder-enum-master-phase2
component: infrastructure-governance-mode-enum-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

infrastructure_governance_mode_enum:
- direct_state_control
- public_corporation_control
- city_authority_control
- licensed_private_operator
- mixed_public_private_control


# ============================================================
# 2. RULE
# ============================================================

Each nation must expose one primary
infrastructure_governance_mode,
subject to nation-specific override.


# ============================================================
# 3. FINAL RULE
# ============================================================

Infrastructure governance mode
defines the baseline public versus delegated control pattern.
