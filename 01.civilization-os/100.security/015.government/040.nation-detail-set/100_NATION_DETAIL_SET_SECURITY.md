# ============================================================
# NATION DETAIL SET
# SECURITY
# ============================================================

status: draft
layer: security
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for nation detail sets.

# 2. SECURITY SCOPE

- detail-profile integrity
- bundle integrity
- publication authorization
- detail audit protection

# 3. SECURITY RULES

- bundle source and version must be attributable
- publication requires explicit authorization
- incomplete detail misuse must be detectable
- audit output must preserve nation identity

