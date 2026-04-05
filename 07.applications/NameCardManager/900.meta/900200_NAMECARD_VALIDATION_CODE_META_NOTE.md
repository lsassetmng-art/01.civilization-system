# ============================================================
# NAMECARD VALIDATION CODE META NOTE
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: validation_code
owner: Boss
prepared_by: Zero

purpose:
Captures meta notes for validation code design.

# ============================================================
# 1. CURRENT DECISION
# ============================================================

Current design decision:
- validation codes are separate from error codes
- validation describes unmet prerequisites and invalid request shape
- validation should occur before deeper execution where possible

# ============================================================
# 2. OPEN DETAIL AREAS
# ============================================================

May be detailed later:
- exact field-level validation hint schema
- exact UI wording catalog for validation messages
- exact precedence rules when multiple validation issues exist

