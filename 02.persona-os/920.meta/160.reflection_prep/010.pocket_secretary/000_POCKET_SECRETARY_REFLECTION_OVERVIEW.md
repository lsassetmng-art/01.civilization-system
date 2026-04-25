# ============================================================
# POCKET SECRETARY REFLECTION OVERVIEW
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: reflection-prep
subdomain: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Summarizes how PersonaOS normalized boundaries must be reflected
into PocketSecretary as a runtime-facing host application.

summary:
PocketSecretary is a runtime-facing consumer and presenter of
PersonaOS-derived data.
It may consume, cache, display, and operationally support
PersonaOS-linked data, but it must not become the authority owner
of Persona identity, state, growth, snapshot, governance truth,
or security verdict truth.

reflection_priority:
1. preserve PersonaOS truth ownership
2. preserve stage separation
3. keep host/runtime/session data non-authoritative
4. keep visual runtime execution separate from visual truth ownership
5. keep local support records separate from canonical records
