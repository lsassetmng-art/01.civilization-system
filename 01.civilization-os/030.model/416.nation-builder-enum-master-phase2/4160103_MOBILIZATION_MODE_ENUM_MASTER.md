# ============================================================
# MOBILIZATION MODE ENUM MASTER
# ============================================================

status: canonical
layer: model
scope: nation-builder-enum-master-phase2
component: mobilization-mode-enum-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

mobilization_mode_enum:
- peacetime_only
- reserve_ready
- phased_partial_callup
- strategic_sector_first
- border_threat_reactive
- full_general_mobilization_capable


# ============================================================
# 2. RULE
# ============================================================

Mobilization mode
defines how escalation is organized
after authority approval.


# ============================================================
# 3. FINAL RULE
# ============================================================

Mobilization mode
defines escalation structure,
not just war intent.
