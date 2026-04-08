# ============================================================
# MODE CORE DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines development guidance for canonical mode implementation.

scope:
Covers coding rules, module boundaries,
test requirements, anti-patterns,
migration guidance, and review checklist
for core mode logic.

development_rules:
- Do not store canonical mode only in UI route state.
- Do not infer effective mode from presentation state alone.
- Do not bypass conflict detection to force a result.
- Do not mix historical mode retrieval into current-active lookup path.
- Do not expose restricted mode semantics before visibility filtering.
- Do not treat switch handlers as permission handlers; authorization must stay explicit.

test_matrix:
- scope binding -> required
- mode type validation -> required
- conflict detection -> required
- effective-mode selection -> required
- current/historical separation -> required
- restricted masking -> required
- switch authorization denial -> required
- rollback linkage -> required
- trace emission on switch/deny -> required

anti_patterns:
- hidden fallback to arbitrary default mode on conflict
- current-mode cache reused for historical reads
- UI component inventing undeclared mode state
- public-safe projection built before restricted filtering
- emergency mode switch without explicit authority path

review_checklist:
- mode_code and mode_type remain explicit
- conflict detection exists before selection
- current and history code paths are separated
- restricted and sealed outputs are filtered late enough
- switch path requires authority input where needed
- failures emit stable failure codes
- traces are preserved for allow/deny/switch events

migration_rules:
- Replace local boolean flags with typed mode records.
- Migrate implicit route-based mode assumptions into resolver inputs.
- Add revision/history coverage before removing legacy mode paths.
- Preserve prior mode semantics through mapping tests during refactor.

failure_focus:
- unresolved conflict must fail closed
- missing history_context must fail closed for replay reads
- missing authority_context must fail closed for restricted switch paths

example_scenarios:
- A refactor that replaces page-specific "isEmergency" flags with canonical mode resolver inputs adds conflict and history tests before rollout.
