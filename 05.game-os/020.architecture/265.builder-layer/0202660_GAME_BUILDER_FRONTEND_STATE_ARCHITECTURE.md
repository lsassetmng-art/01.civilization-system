# ============================================================
# GAME BUILDER FRONTEND STATE ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official frontend state architecture of Game Builder.

This architecture defines how Builder frontend state
should be separated and managed.

It covers:
- app shell state
- project state
- editor working state
- autosave/save state
- asset studio state
- preview state
- validation state
- export/submission state
- UI-only transient state


# ============================================================
# 1. FRONTEND STATE PRINCIPLE
# ============================================================

Frontend state must preserve the same distinctions
as backend Builder truth.

It must not collapse:
- working state
- autosave state
- official save state
- preview state
- validation state
- export/submission state

Frontend state must remain predictable and debuggable.


# ============================================================
# 2. STATE DOMAINS
# ============================================================

Minimum frontend state domains:

- app_shell_state
- project_list_state
- active_project_state
- editor_working_state
- save_state
- asset_state
- preview_state
- validation_state
- export_state
- submission_state
- ui_transient_state


# ============================================================
# 3. APP SHELL STATE
# ============================================================

Contains:
- active_workspace_code
- active_project_code nullable
- current_screen
- role_context
- global_status_summary

This state is navigation-oriented.


# ============================================================
# 4. ACTIVE PROJECT STATE
# ============================================================

Contains:
- project metadata
- runtime/template bindings
- latest revision summary
- latest autosave summary
- linkage summaries
- validation/export/submission summaries

This state reflects backend Builder truth.


# ============================================================
# 5. EDITOR WORKING STATE
# ============================================================

Contains:
- block tree working copy
- active block selection
- unsaved block edits
- reorder operations
- inline diagnostics cache
- local editing context

This state is volatile and may diverge from saved revision.


# ============================================================
# 6. SAVE STATE
# ============================================================

Contains:
- dirty_state
- latest_revision_ref
- latest_autosave_snapshot_ref
- autosave_newer_than_latest_revision
- save_in_progress flag
- autosave_in_progress flag

Save state must always be visible enough for UI.


# ============================================================
# 7. ASSET STATE
# ============================================================

Contains:
- asset list
- selected asset
- asset filters
- upload progress
- asset editor working state
- variant generation state
- binding inspector state

Asset payload preview caches may be separate from metadata truth.


# ============================================================
# 8. PREVIEW STATE
# ============================================================

Contains:
- preview_session_id
- preview_basis
- preview_mode
- mock_mode_summary
- preview runtime state summary
- preview outputs
- preview loading/running/error flags

Preview state must be sandbox-labeled
and must not merge into save state.


# ============================================================
# 9. VALIDATION STATE
# ============================================================

Contains:
- latest validation result refs by stage
- active validation stage
- findings list
- grouping/filter mode
- rerun status
- freshness indicators

Validation state is not equivalent to save state.


# ============================================================
# 10. EXPORT / SUBMISSION STATE
# ============================================================

Contains:
- export readiness summary
- latest export package summary
- export history list
- runtime export contract summary
- submission readiness summary
- submission history/status

Export/submission state must not be mixed
into editor working state.


# ============================================================
# 11. UI-ONLY TRANSIENT STATE
# ============================================================

Contains:
- panel collapse/open state
- current filter text
- modal visibility
- drag-and-drop hover state
- tab choice
- local unsaved form helper state

This state must not be treated as Builder truth.


# ============================================================
# 12. DERIVATION RULE
# ============================================================

Frontend should derive display-oriented summaries from formal state,
but must not fabricate platform truths.

Examples of safe derivation:
- grouped finding counts
- display labels
- block tree folding
- asset gallery filters

Unsafe derivation examples:
- treating autosave as official save
- treating preview success as export validity
- treating exported as published


# ============================================================
# 13. FINAL ARCHITECTURAL RULE
# ============================================================

Frontend state must remain domain-separated and explicit.

Core summary:

- app shell, project, editor, asset, preview, validation,
  export, and submission state remain distinct
- working state is volatile
- save state is formal
- preview state is sandbox-only
- UI-only transient state is not Builder truth
