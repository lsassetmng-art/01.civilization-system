# ============================================================
# FIELD SERVICE ROUTING ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: field-service-routing
component: field-service-routing

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical routing architecture
between field-map facilities,
tenant containers,
and concrete service UIs
inside Civilization.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Field service routing must separate:

- object type
- service type
- entry method
- permission state
- context banner
- return path

Normal tap must resolve
to one clear use path,
overview path,
or restriction path.


# ============================================================
# 3. ROUTING PRINCIPLE
# ============================================================

Single-function facility:
- tap resolves directly to canonical service UI

Overview-first facility:
- tap resolves to facility overview first

Multi-tenant building:
- tap resolves to tenant list
- tenant resolves to canonical service UI
  of the same service type

Creator-owned editable object:
- tap resolves to use or overview
- explicit management resolves to builder


# ============================================================
# 4. FINAL RULE
# ============================================================

Field routing must make it obvious
what object was tapped,
what service was requested,
and why a route was opened or blocked.
