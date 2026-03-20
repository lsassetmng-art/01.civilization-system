# ============================================================
# EVENT REGISTRY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Event registry is the authoritative catalogue of allowed event types.

registry_contents:
- event_name
- version
- schema_reference
- source_domain
- target_domain
- permission_requirements
- validation_requirements
- handler_reference
- deprecation_state

rules:
- unregistered event types are invalid
- versioned event evolution must be explicit
- removed event types must not remain silently usable

purposes:
- prevent arbitrary event injection
- guarantee schema consistency
- support safe evolution

final_rule:
No event may enter runtime unless it exists in the explicit event registry.
