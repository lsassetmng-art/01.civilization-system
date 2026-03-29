# ============================================================
# QUALIFICATION SYSTEM MODEL
# ============================================================

status: canonical
layer: model
scope: education-qualification-announcement
component: qualification-system

owner: Boss
prepared_by: Zero


# ============================================================
# 1. QUALIFICATION FAMILIES
# ============================================================

qualification_families:
- private_qualification
- public_qualification
- national_qualification


# ============================================================
# 2. QUALIFICATION TIERS
# ============================================================

qualification_tiers:
- beginner
- intermediate
- advanced


# ============================================================
# 3. FINAL RULE
# ============================================================

Qualification system
must distinguish family and tier
as separate structural axes.
