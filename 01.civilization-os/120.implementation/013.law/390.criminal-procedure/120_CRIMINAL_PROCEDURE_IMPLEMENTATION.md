# ============================================================
# CRIMINAL PROCEDURE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for criminal procedure.

# 2. IMPLEMENTATION TARGETS

- case/charge handling
- stage handling
- judgment publication
- progression control
- audit publication

# 3. DATA / STATE

Canonical structures:
- criminal_case
- criminal_charge
- criminal_procedure_stage
- criminal_judgment

# 4. EXECUTION

- resolve explicit jurisdiction scope and charge identity
- persist stage history before judgment publication
- block progression on invalid charge/stage state
- reject hidden procedural mutation path

# 5. VALIDATION

- reject missing jurisdiction scope
- reject invalid charge/stage binding
- reject hidden procedural mutation without stage record

# 6. OBSERVABILITY

- criminal-procedure audit
- charge/stage visibility
- judgment visibility

