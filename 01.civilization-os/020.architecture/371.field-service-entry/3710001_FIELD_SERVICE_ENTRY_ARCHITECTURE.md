# ============================================================
# FIELD SERVICE ENTRY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: field-service-entry
component: field-service-entry

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical service entry architecture
for field-map objects in Civilization.

This architecture defines:

- direct service entry
- overview-first entry
- multi-tenant entry
- creator-owned management entry
- context-aware routing to service UI


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Field service entry must distinguish between:

- service use
- object overview
- tenant selection
- management entry
- builder entry

Normal tap must prioritize use.
Management and editing must remain explicit.


# ============================================================
# 3. SERVICE ENTRY RULE
# ============================================================

Single-function facility:
- tap opens service UI directly

Overview-first facility:
- tap opens facility overview
- service is chosen from overview

Multi-tenant building:
- tap opens tenant list
- tenant selection opens the same service UI
  that would open from a single-function facility
  of the same service type

Creator-owned editable object:
- tap opens normal use or overview
- explicit manage action opens builder or editor


# ============================================================
# 4. CONTEXT PRINCIPLE
# ============================================================

Service UI meaning must remain stable.

Entry context may add:
- building name
- tenant name
- floor or zone
- operator label
- building-level campaign or notice

Entry context must not redefine
the underlying service UI structure.


# ============================================================
# 5. FINAL RULE
# ============================================================

Field service entry must make facilities easy to use,
while keeping management and editing separate
and preserving one canonical UI per service type.
