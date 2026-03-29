# ============================================================
# USER REGISTRATION CANCEL MODEL
# ============================================================

status: canonical
layer: model
scope: user-registration-screen
component: user-registration-cancel

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANCEL RULES
# ============================================================

cancel_rules:
- cancel returns to Civilization Access Gateway
- cancel does not create partial account state
- cancel may discard unsaved inputs
- cancel should be safe and explicit


# ============================================================
# 2. FINAL RULE
# ============================================================

Cancel must always provide
a clean exit
from registration flow.
