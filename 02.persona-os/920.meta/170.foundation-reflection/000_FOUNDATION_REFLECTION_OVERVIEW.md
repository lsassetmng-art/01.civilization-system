# ============================================================
# PERSONA OS FOUNDATION REFLECTION OVERVIEW
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
owner: Boss
prepared_by: Zero

purpose:
Summarizes the foundation-side reflection preparation that applies
PersonaOS normalized boundaries to internal execution layers.

current_scope:
- VisualRuntime as PersonaOS-internal visual execution layer

foundation_reflection_rule:
Foundation-side layers may execute, render, cache,
diagnose, and operationally support PersonaOS-derived truth,
but they must not silently replace PersonaOS canonical authority.

non_negotiable_rules:
- execution artifacts are non-authoritative
- render/session/cache state is non-authoritative
- support/diagnostics traces are non-authoritative
- canonical visual truth remains upstream from execution
- stage separation remains visible inside foundation flows

next_action:
Absorb these rules into actual PersonaOS visual architecture,
runtime-hosting, runtime, implementation, interface,
security, and operations-support canonical documents.
