# ============================================================
# STREAM STUDIO PHASE1 SQL REVIEW CHAT START PROMPT
# ============================================================

status: starter-template
layer: implementation-handoff
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Provides a copy-ready opening template for a future chat
focused on SQL review before real apply.

copy_template:
I want to continue StreamStudio with Phase 1 SQL review only.

Rules:
- Show roadmap first
- Keep outputs bundled as much as possible
- Do not say SQL has already been applied
- Persona-side DB work uses PERSONA_DATABASE_URL
- Use Method A format if SQL blocks are generated
- Keep this as review / prep unless I explicitly say to apply
- Respect 佐藤（DB担当） review rule

Reference position:
- Start from 147 to 153 bundles
- Respect 152 psql apply preflight memo
- Respect 157 final master summary
- Real apply has not started yet

Current request:
[write the SQL review task here]

fixed_statement:
Use this template when the next chat should focus on Phase 1 SQL review or pre-apply preparation.
