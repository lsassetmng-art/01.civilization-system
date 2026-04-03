# ============================================================
# AUTO PURCHASE MODE MODEL
# ============================================================

status: canonical
layer: model
scope: daily-necessities-and-self-sufficiency
component: auto-purchase-mode

owner: Boss
prepared_by: Zero


# ============================================================
# 1. MODES
# ============================================================

auto_purchase_modes:
- full_auto
- minimum_only_auto
- shortage_only_auto
- self_sufficiency_first_auto
- welfare_first_auto
- manual_override_allowed


# ============================================================
# 2. DEFAULT RULE
# ============================================================

default_rule:
- food -> self_sufficiency_first_auto
- daily_necessities -> shortage_only_auto


# ============================================================
# 3. FINAL RULE
# ============================================================

Essential purchasing
must be auto-managed by default.
