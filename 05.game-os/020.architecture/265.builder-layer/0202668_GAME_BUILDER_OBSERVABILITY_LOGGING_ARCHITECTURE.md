# ============================================================
# GAME BUILDER OBSERVABILITY LOGGING ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official observability and logging architecture of Game Builder.

This architecture defines:
- what Builder events should be logged
- how domain events should be grouped
- minimum identifiers in logs
- failure analysis expectations


# ============================================================
# 1. OBSERVABILITY PRINCIPLE
# ============================================================

Builder logs must help answer:

- what the user tried to do
- on which project/block/asset/export/submission
- with which result
- why it failed if it failed

Logs must be domain-oriented, not vague.


# ============================================================
# 2. REQUIRED LOG DOMAINS
# ============================================================

Minimum domains:
- project lifecycle
- block mutation
- save/autosave
- asset import/edit/bind
- preview session lifecycle
- validation execution
- export execution
- submission execution
- lock/conflict events
- permission denial events


# ============================================================
# 3. MINIMUM LOG FIELDS
# ============================================================

Each significant log event should include at minimum:

- event_name
- project_code where applicable
- block_id or asset_ref where applicable
- revision_ref or autosave_snapshot_ref where applicable
- export_package_code or submission_request_ref where applicable
- correlation_id
- actor_identity summary
- result_status
- timestamp

Sensitive payload contents should not be dumped blindly.


# ============================================================
# 4. FAILURE ANALYSIS RULE
# ============================================================

Failures should expose:
- domain
- reason class
- affected scope
- retryability hint where applicable

Examples:
- validation_blocked
- lock_conflict
- permission_denied
- dependency_unresolved
- preview_policy_blocked
- export_creation_failed


# ============================================================
# 5. FINAL ARCHITECTURAL RULE
# ============================================================

Builder observability must be domain-aware and debugging-friendly.

Core summary:

- log by Builder domain
- include object identity and correlation
- make failures classifiable
- avoid vague generic failure logging
