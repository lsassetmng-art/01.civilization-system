# ============================================================
# GAME OS REQUEST RESPONSE EXACT JSON EXAMPLES OVERVIEW
# ============================================================

status: active
system: Civilization System
os: GameOS
folder: 900.meta/request-response-exact-json-examples
prepared_for: Boss
prepared_by: Zero
updated_at: 2026-04-17
language: English

summary:
This folder fixes the request/response exact JSON example boundary for GameOS.
It translates implementation-ready API directions into payload-level examples.

covered API groups:
- Builder project creation
- Revision save and autosave
- Preview session creation
- Validation run creation
- Export package creation
- Submission request creation
- Runtime session launch
- Save slot write
- Persona growth outbox queue
- Gambling release policy check

mandatory design elements per example:
- endpoint
- purpose
- request json
- success response json
- typical failure response json
- notes on idempotency and basis references where needed

current_primary_file:
- 900400_GAME_OS_REQUEST_RESPONSE_EXACT_JSON_EXAMPLES.md

notes:
- PersonaOS appears only as external contract destination
- This folder is payload exactness, not loose API brainstorming
- Examples here must stay aligned with GameOS canonical implementation contract
