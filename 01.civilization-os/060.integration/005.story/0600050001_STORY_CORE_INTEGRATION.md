# ============================================================
# STORY CORE INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines core integration behavior for story data.

scope:
Covers live story export,
historical replay export,
branch-safe projection,
story summary delivery,
and rejection of unsafe narrative overwrite.

design_intent:
Story must be shared without confusing live progression,
historical replay, and public-safe narrative summary.
Core story integration exists to preserve those distinctions.

canonical_rules:
- Live and replay story exports must be explicitly distinguished.
- Public story projection must remain summary-safe.
- Branch-specific detail must not be misrepresented outside allowed scope.
- Imported narrative suggestions must not overwrite canonical story progression without authority.

required_behavior:
- Support internal live story projection.
- Support public-safe story summary export.
- Support historical replay export.
- Support audit-safe story trace export.
- Support proposal-only import path for narrative suggestions.

integration_state_model:
story_integration_state:
- projected
- masked
- delivered
- replay_delivered
- proposal_only
- rejected

projection_mode:
- internal_live
- public_summary
- historical_replay
- audit_trace

validation_rules:
- story_scope is required.
- live export must have valid current stage.
- replay export must have historical flag.
- public projection must not imply hidden branch state.
- imported story payload attempting canonical overwrite without authority is prohibited.

failure_codes:
- STORY_INT_SCOPE_MISSING
- STORY_INT_CURRENT_STAGE_INVALID
- STORY_INT_HISTORICAL_FLAG_REQUIRED
- STORY_INT_PUBLIC_BRANCH_VIOLATION
- STORY_INT_OVERWRITE_DENIED

example_scenarios:
- A public timeline surface receives a safe story summary.
- An internal viewer receives the current active story stage.
- A user-submitted narrative suggestion becomes proposal_only.
