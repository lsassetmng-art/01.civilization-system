# ============================================================
# PERSONA CORE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for Civilization-side persona core structures.

# 2. IMPLEMENTATION TARGETS

- persona-definition handling
- identity/origin handling
- persona-status handling
- publication control
- audit publication

# 3. DATA / STATE

Canonical structures:
- persona_definition
- persona_identity
- persona_origin
- persona_status

# 4. EXECUTION

- resolve explicit persona scope and persona identity
- bind identity and origin before publication
- publish only explicit active or suspended state
- reject hidden persona-core mutation path

# 5. VALIDATION

- reject missing persona scope
- reject invalid identity or origin binding
- reject hidden persona-core mutation

# 6. OBSERVABILITY

- persona-core audit
- identity/origin visibility
- persona-status visibility


## Exact Persona Authority Surface
## Exact Persona Authority Surface

Persona authority must declare:

- persona_id
- authority_scope
- activity_scope
- placement_scope
- schedule_scope
- sanction_effect
- player_binding_effect

## Exact Persona Placement Rule

Persona placement, authority, and activity must remain distinguishable.
Placement does not automatically imply unrestricted activity authority.
