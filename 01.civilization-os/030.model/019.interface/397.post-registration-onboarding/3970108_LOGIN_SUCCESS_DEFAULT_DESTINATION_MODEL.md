# ============================================================
# LOGIN SUCCESS DEFAULT DESTINATION MODEL
# ============================================================

status: canonical
layer: model
scope: post-registration-onboarding
component: login-success-default-destination

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the default destination
after successful ordinary login.


# ============================================================
# 2. DEFAULT DESTINATION
# ============================================================

default_destination:
- civilization_global_map


# ============================================================
# 3. RULES
# ============================================================

rules:
- normal login success routes to civilization_global_map
- post-registration onboarding completion routes to civilization_global_map
- civilization_global_map is the standard home-equivalent surface
- story-mode access may use a separate dedicated destination


# ============================================================
# 4. FINAL RULE
# ============================================================

Civilization Global Map
is the default first surface
for ordinary access.
