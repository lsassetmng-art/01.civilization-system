# ============================================================
# PERSONA OS ARCHITECTURE
# ============================================================

status: implementation-ready-followup
system: PersonaOS
layer: architecture
canonical: true

architectural_goal:
PersonaOS is organized around authoritative truth mutation,
controlled authoring, immutable release inputs,
and auditable external-rights control.

major_nodes:
- edge acceptance
- validation engine
- canonical apply engine
- builder authoring subsystem
- visual resolution subsystem
- runtime hosting subsystem
- snapshot issuance subsystem
- package subsystem
- external-rights subsystem
- integration outbox and callback subsystem
- security and observability subsystem

authoritative_boundaries:
- only canonical apply updates truth state
- builder stores draft state only
- runtime state is ephemeral and non-authoritative
- snapshot and package are immutable release-side artifacts
- external release requires rights authority and release gate satisfaction

non_bypass_rule:
No user interface or batch job may bypass validation, canonical apply,
release immutability, or rights checks.
