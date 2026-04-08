# ============================================================
# INITIAL NATION AND CITY SET
# SECURITY
# ============================================================

status: draft
layer: security
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for initial nation and city sets.

# 2. SECURITY SCOPE

- set identity integrity
- assignment integrity
- publication authorization
- initial-set audit protection

# 3. SECURITY RULES

- nation/city assignments must remain attributable
- publication requires explicit authorization
- partial publication misuse must be detectable
- audit output must preserve set identity

