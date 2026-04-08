# ============================================================
# CRIMINAL PROCEDURE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for criminal procedure.

# 2. TRIGGER

- criminal case opening
- charge/stage update
- judgment issuance

# 3. MAIN FLOW

1. create or resolve criminal_case
2. bind criminal_charge set
3. update criminal_procedure_stage
4. validate jurisdiction and procedural progression
5. persist criminal_judgment where applicable
6. emit audit trace

# 4. FAILURE FLOW

- missing jurisdiction scope -> reject
- invalid charge/stage binding -> reject
- hidden procedural mutation without stage record -> fail closed

# 5. OUTPUT

- criminal case state
- charge/stage/judgment state
- audit record

