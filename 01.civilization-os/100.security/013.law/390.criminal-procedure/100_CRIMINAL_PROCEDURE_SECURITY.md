# ============================================================
# CRIMINAL PROCEDURE
# SECURITY
# ============================================================

status: draft
layer: security
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for criminal procedure.

# 2. SECURITY SCOPE

- criminal-case identity integrity
- charge/stage authorization
- judgment integrity
- criminal-procedure audit protection

# 3. SECURITY RULES

- jurisdiction scope, charge identity, and stage history must be tamper-evident
- stage mutation requires explicit authorization
- hidden procedural mutation without stage record must be detectable
- audit output must preserve case identity

