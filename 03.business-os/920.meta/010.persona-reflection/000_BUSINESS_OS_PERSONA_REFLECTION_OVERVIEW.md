# ============================================================
# BUSINESS OS PERSONA REFLECTION OVERVIEW
# ============================================================

status: canonical-meta
system: business-os
layer: meta
domain: persona-reflection
owner: Boss
prepared_by: Zero

purpose:
Summarizes the BusinessOS-side reflection patch set
that applies PersonaOS wording cleanup, implementation-facing
boundary normalization, and cross-domain stage separation
to the real BusinessOS canonical design tree.

position:
BusinessOS is a business-scoped workflow/integration consumer
of Persona-linked truth and Persona-linked contract outcomes.

non_negotiable_reflection_rules:
- BusinessOS must not become Persona identity authority
- BusinessOS must not become Persona state authority
- BusinessOS must not become Persona growth authority
- BusinessOS must not become Persona snapshot authority
- BusinessOS must not replace Persona governance/security truth
- business workflow/support/integration data must remain non-authoritative
  with respect to Persona truth

patch_strategy:
- patch actual canonical design by reflection notes first
- absorb into architecture/model/integration/policy later
- do not silently rewrite existing business-owned truth boundaries
- explicitly separate business-owned truth from Persona-owned truth
