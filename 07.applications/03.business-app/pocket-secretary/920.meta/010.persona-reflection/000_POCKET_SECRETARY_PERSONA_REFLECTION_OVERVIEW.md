# ============================================================
# POCKET SECRETARY PERSONA REFLECTION OVERVIEW
# ============================================================

status: canonical-meta
system: pocket-secretary
layer: meta
domain: persona-reflection
owner: Boss
prepared_by: Zero

purpose:
Summarizes the PocketSecretary-side reflection patch set
that applies PersonaOS wording cleanup, implementation-facing
boundary normalization, and cross-domain stage separation
to the real PocketSecretary canonical design tree.

position:
PocketSecretary is a runtime-facing host consumer and presenter
of PersonaOS-derived truth.

non_negotiable_reflection_rules:
- PocketSecretary must not become Persona identity authority
- PocketSecretary must not become Persona state authority
- PocketSecretary must not become Persona growth authority
- PocketSecretary must not become Persona snapshot authority
- PocketSecretary must not replace Persona governance/security truth
- PocketSecretary host/runtime/support data must remain non-authoritative

patch_strategy:
- patch actual canonical design by reflection notes first
- absorb into architecture/runtime/integration/policy later
- do not silently rewrite existing authority boundaries
