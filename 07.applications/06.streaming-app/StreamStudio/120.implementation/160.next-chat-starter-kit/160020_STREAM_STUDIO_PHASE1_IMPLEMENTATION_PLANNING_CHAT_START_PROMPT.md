# ============================================================
# STREAM STUDIO PHASE1 IMPLEMENTATION PLANNING CHAT START PROMPT
# ============================================================

status: starter-template
layer: implementation-handoff
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Provides a copy-ready opening template for a future chat
that starts implementation planning but not real implementation yet.

copy_template:
I want to continue StreamStudio with Phase 1 implementation planning only.

Rules:
- Show roadmap first
- Keep outputs bundled as much as possible
- Do not claim implementation is already done
- Do not run real DB apply or real code generation yet
- Keep common-component work outside this chat
- Respect the frozen Phase 1 boundary

Reference position:
- Start from 154.phase1-final-handoff
- Use 153.phase1-sql only as planning reference
- Respect 157.final-master-summary
- Respect 158.final-app-specific-audit

Current request:
[write the phase 1 planning task here]

fixed_statement:
Use this template when the next chat should plan Phase 1 work without starting real implementation.
