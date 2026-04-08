# ============================================================
# TAX
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for taxation.

# 2. IMPLEMENTATION TARGETS

- rule resolution
- base/assessment handling
- payment-state handling
- downstream settlement handoff
- audit publication

# 3. DATA / STATE

Canonical structures:
- tax_rule
- tax_base
- tax_assessment
- tax_payment_state

# 4. EXECUTION

- resolve explicit jurisdiction rule
- compute and persist assessment before payment application
- preserve assessment identity through payment state
- reject unscoped taxation path

# 5. VALIDATION

- reject missing jurisdiction rule
- reject invalid tax base
- reject unscoped taxation

# 6. OBSERVABILITY

- tax audit
- assessment/payment visibility
- jurisdiction-rule audit

