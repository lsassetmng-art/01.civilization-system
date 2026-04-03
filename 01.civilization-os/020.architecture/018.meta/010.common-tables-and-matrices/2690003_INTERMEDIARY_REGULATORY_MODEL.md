# ============================================================
# INTERMEDIARY REGULATORY MODEL
# ============================================================

status: canonical
layer: architecture
scope: cross-cutting
component: intermediary-regulatory-model

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical intermediary and regulatory structure
for activities that must not be directly executed
by ordinary companies.

This model governs mandatory intermediary routing.


# ============================================================
# 2. CORE RULE
# ============================================================

Certain activities must always be routed
through system-limited intermediary entities.

User companies may initiate intent,
but may not directly execute regulated actions.


# ============================================================
# 3. REQUIRED INTERMEDIARY DOMAINS
# ============================================================

Mandatory intermediary domains:

- securities execution
  intermediary:
  - securities_firm

- land / building / tenant transaction
  intermediary:
  - real_estate_company

- construction execution
  intermediary:
  - construction_company

- regulated banking / loan / collateral handling
  intermediary:
  - bank

- insurance issuance / claim handling
  intermediary:
  - insurance_company


# ============================================================
# 4. DIRECT EXECUTION PROHIBITIONS
# ============================================================

Examples of prohibited direct execution:
- direct stock execution by ordinary company
- direct TOB settlement without securities_firm
- direct property transfer without real_estate_company
- direct building construction without construction_company
- direct regulated lending without bank
- direct regulated insurance service without insurance_company


# ============================================================
# 5. INTERMEDIARY FLOW
# ============================================================

Canonical pattern:
- business intent created
- intermediary intake
- regulatory or compatibility validation
- execution processing
- result record creation
- downstream state update


# ============================================================
# 6. REGULATORY RESPONSIBILITY
# ============================================================

Intermediary entities carry:
- rule enforcement responsibility
- compatibility verification responsibility
- audit trail responsibility
- forced action initiation responsibility where applicable


# ============================================================
# 7. FORCED ACTION SUPPORT
# ============================================================

Intermediaries may trigger or process:
- order rejection
- trade halt
- listing block
- property enforcement
- eviction process
- forced liquidation
- collateral recovery


# ============================================================
# 8. FINAL RULE
# ============================================================

Intermediary routing is a canonical Civilization rule
for regulated actions.

Ordinary company intent is allowed.
Direct regulated execution is not.
