# ============================================================
# GAME BUILDER EXPORT PUBLISH CENTER ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official Export / Publish Center architecture of Game Builder.

This architecture defines the Builder-side handoff surface
used to create export package candidates and submission requests.

It covers:
- export readiness inspection
- export package creation
- runtime export contract visibility
- export history visibility
- submission readiness inspection
- submission request creation
- submission status visibility
- the formal boundary between export, submission, and publish


# ============================================================
# 1. ROLE OF EXPORT / PUBLISH CENTER
# ============================================================

Export / Publish Center is the Builder subsystem responsible for
the formal handoff from authoring state to platform lifecycle state.

It must let creators:
- understand whether a project is export-ready
- create export package candidates explicitly
- inspect export lineage
- understand whether a project is submission-ready
- create submission requests explicitly
- inspect submission lifecycle state

Export / Publish Center is not:
- the final publish approval surface
- the runtime validator itself
- the moderation decision surface
- the platform authority for commercial finality

It is the Builder-side handoff gate.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

The Export / Publish Center must preserve these distinctions:

- save is not export
- export is not submission
- submission is not approval
- approval is not publish
- publish is not Builder truth

These distinctions are mandatory.

The UI must never imply:
"exported" == "published"

The UI must never imply:
"submitted" == "approved"


# ============================================================
# 3. PRIMARY DOMAINS
# ============================================================

Export / Publish Center must contain explicit domains:

- export readiness domain
- export execution domain
- runtime contract inspection domain
- export history domain
- submission readiness domain
- submission execution domain
- submission history/status domain

These domains must remain visible enough
for creators to understand where they are in the lifecycle.


# ============================================================
# 4. EXPORT READINESS DOMAIN
# ============================================================

purpose:
Show whether the project can become an export package candidate.

Export readiness must inspect at minimum:

- latest official saved revision presence
- active runtime family resolution
- runtime profile resolution
- ruleset profile resolution
- template compatibility where applicable
- required asset family completeness
- export validation result
- blocking issue count
- export contract prerequisite completeness

The export readiness domain must show:
- ready / not ready
- reasons for blocked export
- affected scope summary
- latest validation basis
- frozen revision candidate

A creator must be able to answer:
"Can I export right now, and if not, why not?"


# ============================================================
# 5. EXPORT EXECUTION DOMAIN
# ============================================================

purpose:
Allow explicit creation of an export package candidate.

Export execution must require:
- official saved revision target
- no blocking export validation findings
- resolved runtime contract prerequisites
- resolved required asset family set

Export execution must create or request creation of:
- export_package_code
- export hash
- runtime export contract linkage
- asset manifest linkage
- frozen revision linkage
- export timestamp
- export status

Export must be explicit.
Export must not happen implicitly through save or validation alone.


# ============================================================
# 6. RUNTIME EXPORT CONTRACT INSPECTION DOMAIN
# ============================================================

purpose:
Expose the resolved runtime export contract
that will govern package behavior.

This domain must show at minimum:

- runtime family
- runtime profile
- ruleset profile
- template profile where applicable
- compatibility profile
- required asset family summary
- preview compatibility summary
- sync candidate summary
- state boundary summary
- Persona boundary summary
- commerce/entitlement boundary summary

The creator must be able to inspect
what the package will mean to GameOS,
not only that "a zip-like package exists."

This is critical for runtime-aware publishing.


# ============================================================
# 7. EXPORT HISTORY DOMAIN
# ============================================================

purpose:
Provide export lineage visibility.

Export history must show:
- export_package_code
- export timestamp
- frozen revision ref
- export status
- export hash summary
- runtime contract hash summary where applicable
- who initiated export
- whether submission exists from that export

The user must be able to inspect:
- latest export
- prior exports
- which export is relevant to current submission path

Export history must remain project-scoped.


# ============================================================
# 8. SUBMISSION READINESS DOMAIN
# ============================================================

purpose:
Show whether the project/export is ready to enter review/publish lifecycle.

Submission readiness must inspect at minimum:

- export package existence
- latest export validity
- title linkage
- release linkage
- workspace linkage
- seller linkage through workspace
- publish validation result
- moderation-facing metadata completeness
- rollout-relevant metadata completeness where applicable

The submission readiness domain must show:
- ready / not ready
- reasons for blocked submission
- affected scope summary
- latest validation basis
- selected export package candidate

A creator must be able to answer:
"Can I submit this export right now, and if not, why not?"


# ============================================================
# 9. SUBMISSION EXECUTION DOMAIN
# ============================================================

purpose:
Allow explicit creation of a submission request.

Submission execution must require:
- export package candidate
- publish validation readiness
- title/release linkage
- seller/workspace linkage
- required submission metadata completeness

Submission execution must create or request creation of:
- submission_request_ref
- linked export package ref
- linked release ref
- linked title ref
- validation bundle linkage
- moderation-facing handoff linkage
- submission timestamp
- submission status

Submission must be explicit.
Submission must not happen automatically after export.


# ============================================================
# 10. SUBMISSION STATUS DOMAIN
# ============================================================

purpose:
Show Builder-visible submission lifecycle state.

Submission status visibility should include:
- submission_request_ref
- submission status
- export package linkage
- release linkage
- created_at
- last updated at
- visible external lifecycle state where available

Possible visible states may include:
- created
- under_review
- validation_blocked
- moderation_pending
- approved_externally
- rejected_externally
- rollout_pending
- activated_externally

Builder must not fabricate platform decisions.
Builder must display externally-derived states explicitly as external.


# ============================================================
# 11. EXPORT / SUBMISSION STATUS MODEL
# ============================================================

The center must clearly distinguish these status classes.

Export-side examples:
- not_exported
- export_blocked
- export_ready
- exporting
- exported
- export_failed

Submission-side examples:
- not_submitted
- submission_blocked
- submission_ready
- submitting
- submitted
- submission_failed
- approved_externally
- rejected_externally
- activated_externally

These classes must not be merged into one ambiguous status.


# ============================================================
# 12. RELATION TO VALIDATION CENTER
# ============================================================

Export / Publish Center must consume formal validation truth
but must not replace Validation Center.

It should show:
- validation summary
- blocking counts
- direct links to failing scopes
- which stage is currently relevant

It must not hide the reason for block behind generic text.

Examples:
- "Export blocked by 3 blocking findings"
- "Submission blocked by unresolved seller linkage"
- "Submission blocked by publish validation failure"

Validation Center remains the formal diagnostics hub.


# ============================================================
# 13. RELATION TO PROJECT OVERVIEW
# ============================================================

Project Overview is the project dashboard.
Export / Publish Center is the handoff gate.

Project Overview may summarize export/submission state,
but Export / Publish Center must provide the deeper lifecycle details.

A creator should typically arrive at this screen when asking:
- can I export this?
- can I submit this?
- what happened to my export?
- what happened to my submission?


# ============================================================
# 14. RELATION TO MAIN EDITOR
# ============================================================

Main Editor may provide shortcut access,
but it must not silently perform export or submission.

The Export / Publish Center must remain the place where the creator:
- confirms frozen revision target
- sees export contract summary
- sees asset completeness summary
- explicitly chooses export
- explicitly chooses submission

This prevents accidental lifecycle escalation.


# ============================================================
# 15. RELATION TO RELEASE / TITLE / SELLER LINKAGE
# ============================================================

Export / Publish Center must surface required linkage context.

Minimum visible linkage should include:
- workspace
- seller linkage through workspace
- game title
- release target
- marketplace product linkage where relevant
- export package candidate

The user must be able to understand:
- what title this export belongs to
- what release it targets
- which selling context it will enter through

If linkage is unresolved, submission readiness must be blocked visibly.


# ============================================================
# 16. ROLE-AWARE ACCESS
# ============================================================

Export / Publish Center must be role-aware.

owner:
- full export and submission authority

editor:
- export authority where allowed by policy
- limited submission authority where allowed

reviewer:
- read visibility
- no unrestricted export/submission mutation by default

publisher:
- strong export/submission visibility
- strong submission authority according to policy
- no hidden need for full authoring rights

Role-aware behavior must remain explicit.


# ============================================================
# 17. AUDIT / LINEAGE VISIBILITY
# ============================================================

The center should expose enough lineage to answer:

- which revision was exported
- which export package was submitted
- when export happened
- when submission happened
- whether the current submission is based on the latest export
- whether a newer export exists than the submitted one

This is important for creator confidence
and later review/debug workflows.


# ============================================================
# 18. MVP PRIORITY
# ============================================================

Initial implementation priority should be:

Priority 1:
- export readiness summary
- export action
- submission readiness summary
- submission action
- basic export/submission history

Priority 2:
- runtime export contract summary
- richer lineage visibility
- deeper external status display

Priority 3:
- richer rollout/activation visibility
- advanced publish handoff diagnostics

This is a valid staged implementation path.


# ============================================================
# 19. FINAL ARCHITECTURAL RULE
# ============================================================

Export / Publish Center is the Builder subsystem
for explicit lifecycle handoff.

Core summary:

- export readiness must be visible
- export must be explicit
- runtime export contract visibility is important
- submission readiness must be visible
- submission must be explicit
- export history and submission history must remain clear
- export is not publish
- submission is not approval
