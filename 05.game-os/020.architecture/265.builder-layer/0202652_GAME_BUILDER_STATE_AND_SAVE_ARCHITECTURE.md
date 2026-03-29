# ============================================================
# GAME BUILDER STATE AND SAVE ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official state and save architecture of Game Builder.

This architecture defines:

- working state
- autosave state
- official saved revision
- dirty state
- validation state
- exportable revision boundary
- submission readiness boundary

It is the formal basis for Builder persistence behavior.


# ============================================================
# 1. STATE MODEL OVERVIEW
# ============================================================

Game Builder must distinguish three primary persistence layers:

- working state
- autosave snapshot
- official saved revision

These layers are not interchangeable.

Core rule:

working is not autosave  
autosave is not official save  
official save is not export  
export is not publish

These distinctions are mandatory.


# ============================================================
# 2. WORKING STATE
# ============================================================

purpose:
Represent the current in-editor mutable authoring state.

Working state characteristics:
- lives in active UI/editor memory
- changes rapidly
- may be incomplete
- may be invalid
- may be discarded before save
- may temporarily differ from autosave and official save

Working state may include:
- unsaved block edits
- unsaved ordering changes
- unsaved property edits
- temporary asset binding changes
- temporary preview parameters
- temporary selection state

Working state is the most volatile Builder layer.


# ============================================================
# 3. AUTOSAVE SNAPSHOT
# ============================================================

purpose:
Provide crash recovery and continuity assistance.

Autosave snapshot characteristics:
- created automatically
- recovery-oriented
- not treated as final author confirmation
- not sufficient for export by itself
- may preserve partially invalid work
- must remain distinguishable from official save

Autosave must not silently replace
official saved revision truth.

Autosave is for recovery, not formal release preparation.


# ============================================================
# 4. OFFICIAL SAVED REVISION
# ============================================================

purpose:
Represent the author-confirmed persisted Builder state.

Official saved revision characteristics:
- created by explicit save action
- versioned
- eligible for validation handoff
- eligible for export path
- forms project history
- must be durable and referencable

Only official saved revision may become:
- export target
- validation target for export
- submission target

Official save is the formal Builder-side truth.


# ============================================================
# 5. DIRTY STATE
# ============================================================

purpose:
Represent divergence between working state
and latest official saved revision.

Dirty state must be explicit.

Minimum dirty state categories:

- clean
- unsaved_changes
- autosaved_only
- save_conflict_detected where applicable

Definitions:

clean:
working state matches latest official saved revision

unsaved_changes:
working state differs from latest official saved revision

autosaved_only:
working state has been autosaved,
but no matching official save exists

save_conflict_detected:
Builder detected incompatible restore or overwrite ambiguity

Dirty state visibility is mandatory.


# ============================================================
# 6. SAVE LIFECYCLE
# ============================================================

The official save lifecycle must be:

working state
-> explicit save requested
-> lightweight validation where required
-> official saved revision created
-> dirty state returns to clean

Autosave lifecycle must be:

working state
-> autosave trigger
-> autosave snapshot written
-> dirty state may remain autosaved_only or unsaved_changes

Autosave must not silently produce
an official saved revision.


# ============================================================
# 7. AUTOSAVE RULES
# ============================================================

Autosave must follow explicit policy.

Recommended baseline:

- autosave after short inactivity window
- autosave on meaningful structural mutation
- autosave snapshots retained in bounded history
- autosave recoverable after crash or interruption

Autosave requirements:
- autosave must record timestamp
- autosave must record project reference
- autosave must record snapshot hash or equivalent lineage marker
- autosave must remain project-scoped
- autosave must not masquerade as exportable state

A project with autosave only is not automatically export-ready.


# ============================================================
# 8. OFFICIAL SAVE RULES
# ============================================================

Official save must:

- create revision identity
- update latest saved revision pointer
- store enough metadata for restore/history
- store save timestamp
- store project scope
- store authoring lineage marker
- support later validation and export

Official save may trigger:
- editing validation
- block-level diagnostics refresh
- project summary refresh

Official save must not:
- automatically export
- automatically submit
- automatically publish


# ============================================================
# 9. REVISION MODEL
# ============================================================

A revision is the formal Builder persistence object.

Each revision should define at minimum:

- revision_ref
- project_code
- revision_number or revision_version
- created_at
- created_by
- content_hash or equivalent
- runtime_binding_summary
- template_binding_summary
- asset_binding_summary
- validation_summary where available

A revision must be immutable once created.

Subsequent save creates a new revision,
not in-place mutation of prior revision truth.


# ============================================================
# 10. RESTORE MODEL
# ============================================================

Builder must support restore behavior explicitly.

Restore sources may include:

- latest official saved revision
- earlier official saved revision
- latest autosave snapshot
- selected autosave snapshot where supported

Restore must distinguish:
- restore from official save
- recover from autosave

Recovering from autosave should not silently overwrite
latest official revision.

A recovered autosave must become:
- working state first
and only later
- official saved revision after explicit save


# ============================================================
# 11. VALIDATION STATE MODEL
# ============================================================

Validation state must be tracked separately
from save state.

A project/revision may be:
- saved but validation_failed
- saved and validation_passed
- unsaved but partially checked
- exported only from a validation-passed saved revision

Validation state categories should include:

- not_run
- running
- passed
- warning_only
- failed_blocking

Validation state must not be inferred solely from dirty state.


# ============================================================
# 12. EXPORTABLE REVISION BOUNDARY
# ============================================================

Only an official saved revision may become exportable.

A revision is exportable only if:

- it is an official saved revision
- blocking validation = 0
- required runtime binding is resolved
- required template binding is resolved where applicable
- required asset family set is resolved
- export contract prerequisites are satisfied

Autosave snapshot alone is never exportable.

Working state alone is never exportable.

This boundary is mandatory.


# ============================================================
# 13. SUBMISSION BOUNDARY
# ============================================================

Submission may only occur from an exported revision lineage.

Submission prerequisites include:

- official saved revision exists
- revision passed required validation
- export package exists from that revision lineage
- project linkage and release linkage are resolved
- submission-required metadata is resolved

Submission must not originate directly from:
- working state
- autosave snapshot
- unexported revision


# ============================================================
# 14. PREVIEW RELATION
# ============================================================

Preview may use:

- current working state in lightweight preview mode
or
- latest official saved revision in stable preview mode

Builder must make clear which preview basis is used.

Preview from working state:
- faster
- less formal
- may diverge from official saved revision

Preview from saved revision:
- more stable
- closer to export candidate
- better for validation-oriented testing

Preview basis must remain explicit.


# ============================================================
# 15. COLLABORATION RELATION
# ============================================================

In collaborative scenarios,
state ownership must remain explicit.

At minimum Builder must preserve:

- who changed working state
- who created official save
- who created autosave where relevant
- lock or edit ownership where applicable
- restore conflict visibility where applicable

Collaboration must not collapse the distinction
between autosave and official save.


# ============================================================
# 16. UI VISIBILITY RULE
# ============================================================

The UI must always make visible:

- current save state
- latest official save timestamp
- autosave availability
- dirty/clean state
- validation state
- export readiness state

Minimum visible user-facing labels should make it clear whether work is:

- saved
- unsaved
- autosaved only
- validation blocked
- ready to export

These must never be hidden entirely.


# ============================================================
# 17. FAILURE / RECOVERY RULE
# ============================================================

If Builder is interrupted,
autosave recovery must be offered explicitly.

Recovery flow should distinguish:
- latest official saved revision
- newer autosave snapshot

The user must be able to understand:
- what was formally saved
- what was only autosaved
- what will be restored into working state

Recovery must avoid accidental silent overwrite
of formal revision history.


# ============================================================
# 18. FINAL ARCHITECTURAL RULE
# ============================================================

Game Builder persistence must remain layered and explicit.

Core summary:

- working state is volatile authoring state
- autosave is recovery state
- official saved revision is formal Builder truth
- dirty state must remain visible
- validation state is separate from save state
- only official saved revisions may become exportable
- export is not publish
