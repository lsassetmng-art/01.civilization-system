# ============================================================
# 040 DETAIL OVERVIEW
# ============================================================

status: canonical
layer: integration
domain: detail
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the integration overview of the detail domain.

summary:
The detail integration layer governs how structured detail
is exported, imported, synchronized, transformed, and constrained
across internal and external integration boundaries.

integration_intent:
Architecture defines what detail is.
Runtime defines how detail is resolved.
Flow defines how detail moves through system sequences.
Integration defines how detail crosses boundaries safely
without breaking canonical ownership, visibility, or lifecycle rules.

scope:
- internal detail contract delivery
- external detail exposure control
- detail synchronization rules
- detail projection rules
- detail transformation constraints
- detail import acceptance rules
- audit-safe integration traceability

non_scope:
- replacing canonical detail ownership
- bypassing runtime visibility filtering
- ad hoc untyped export payloads
- direct UI rendering ownership
- free-form cross-boundary note transfer

integration_rules:
- Canonical detail ownership remains inside CivilizationOS.
- Integrated detail must be contract-based and typed.
- Visibility scope must be enforced before export.
- Imported detail must never silently overwrite canonical detail.
- Historical detail must be explicitly marked when exported.
- Restricted detail must not cross boundaries without explicit authority.

required_behavior:
- The integration layer must support projection by consumer scope.
- The integration layer must support masked delivery.
- The integration layer must support historical and audit-safe modes.
- The integration layer must support explicit rejection on invalid import.
- The integration layer must preserve traceability of integrated detail output.

consumer_types:
- internal runtime consumer
- internal interface consumer
- internal governance consumer
- external read-only consumer
- external synchronized consumer
- audit and inspection consumer
