# ============================================================
# LICENSE AND BOUNDARY
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for license and boundary control.

# 2. IMPLEMENTATION TARGETS

- license-state resolution
- grant/rule lookup
- boundary decision handling
- decision publication
- audit publication

# 3. DATA / STATE

Canonical structures:
- persona_license
- boundary_rule
- access_grant
- transfer_rule

# 4. EXECUTION

- resolve valid license window
- resolve explicit grant/rule before crossing boundary
- publish only validated boundary decision
- preserve provenance for every boundary decision

# 5. VALIDATION

- reject missing valid license
- reject missing grant/rule
- reject ambiguous validity window

# 6. OBSERVABILITY

- boundary audit
- grant/rule visibility
- decision provenance visibility

