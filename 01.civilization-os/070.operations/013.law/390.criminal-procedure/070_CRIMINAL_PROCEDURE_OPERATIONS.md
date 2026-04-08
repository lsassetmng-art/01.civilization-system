# ============================================================
# CRIMINAL PROCEDURE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for criminal procedure.

# 2. OPERATIONAL CONTROLS

- case/charge review
- procedure-stage review
- judgment inspection
- criminal-procedure audit inspection

# 3. FAILURE OPERATIONS

- missing jurisdiction scope -> reject
- invalid charge/stage binding -> block
- hidden procedural mutation without stage record -> fail closed

