# ============================================================
# PERSONA SOCIETY LINK
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for Civilization-side persona society links.

# 2. IMPLEMENTATION TARGETS

- society-link persistence
- role-assignment handling
- affiliation/participation handling
- downstream publication
- audit publication

# 3. DATA / STATE

Canonical structures:
- society_link
- role_assignment
- affiliation_state
- participation_state

# 4. EXECUTION

- bind explicit target scope
- persist role/affiliation/participation before downstream publication
- reject contradictory active assignments
- preserve attributable change history

# 5. VALIDATION

- reject missing target scope
- reject contradictory active role assignment
- reject ambiguous affiliation state

# 6. OBSERVABILITY

- society-link audit
- role-assignment audit
- affiliation/participation visibility

