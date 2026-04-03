# ============================================================
# ARCHITECTURAL DESIGN OPERATION MODEL
# ============================================================

status: canonical
layer: model
scope: industry-pack
component: architectural-design-operation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the official operational flow
for architectural design work.


# ============================================================
# 2. CORE FLOW
# ============================================================

Official flow:

- design_brief_received
- proposal_prepared
- proposal_reviewed
- revision_cycle
- design_approved
- design_package_finalized
- construction_handoff_ready


# ============================================================
# 3. KEY OBJECTS
# ============================================================

- design_brief
- design_proposal
- revision_request
- approved_design_package
- construction_handoff_record


# ============================================================
# 4. PAYMENT LOGIC
# ============================================================

Supported payments:
- base_design_fee
- revision_fee
- premium_design_fee

Settlement:
- nation currency


# ============================================================
# 5. FINAL RULE
# ============================================================

Architectural design operation ends in an approved design package,
not in direct construction execution.
