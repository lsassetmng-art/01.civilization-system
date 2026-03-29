# ============================================================
# GAME BUILDER VALIDATION CENTER ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official Validation Center architecture of Game Builder.

This architecture defines the Builder-side validation surface
used to inspect, navigate, and act on validation results.

It covers:
- validation stage views
- severity grouping
- findings presentation
- affected scope navigation
- rerun behavior
- export / submit blocking visibility
- relation to editor, asset studio, preview, and export center


# ============================================================
# 1. ROLE OF VALIDATION CENTER
# ============================================================

Validation Center is the Builder subsystem responsible for
showing formal validation truth in a creator-usable form.

Validation Center must let creators:
- understand what is invalid
- understand why it is invalid
- understand how severe it is
- navigate to the affected scope
- rerun validation explicitly
- know whether export or submission is blocked

Validation Center is not:
- a substitute for runtime policy
- a hidden background-only diagnostics layer
- a publish approval surface

Validation Center is the visible safety gate.


# ============================================================
# 2. VALIDATION STAGE MODEL
# ============================================================

Validation Center must expose the three official validation stages:

- editing_validation
- export_validation
- publish_validation

These stages must remain distinct.

editing_validation:
- supports authoring feedback
- likely higher frequency
- focuses on local structural correctness

export_validation:
- focuses on package integrity
- export readiness
- runtime/template/asset completeness

publish_validation:
- focuses on platform readiness
- submission readiness
- linkage, moderation-facing, and publish-facing completeness

The active validation stage must always be visible.


# ============================================================
# 3. SEVERITY MODEL
# ============================================================

Validation Center must expose severity exactly as formal validation defines it.

Minimum severities:

- blocking
- warning
- info

blocking:
- prevents export and/or submit depending on stage

warning:
- does not always block but indicates likely risk or degraded quality

info:
- advisory only

The UI must never blur blocking with warning.


# ============================================================
# 4. FINDING MODEL
# ============================================================

Each validation finding displayed by Validation Center
must preserve enough formal structure for navigation and resolution.

Each finding should display at minimum:

- finding_id
- validation_stage
- severity
- affected_scope_type
- affected_scope_ref
- summary
- fix_hint where available
- detected_at

Affected scope types may include:

- project
- block
- asset
- runtime_binding
- template_binding
- export_contract
- submission_linkage

Validation Center must remain machine-truth-driven,
not manually interpreted free text only.


# ============================================================
# 5. FINDING GROUPING
# ============================================================

Validation Center must support multiple grouping modes.

Minimum grouping modes:

- by severity
- by affected scope
- by runtime family concern
- by block type or asset family where applicable

Recommended initial default:
- group by severity first
- then by affected scope

The user must be able to quickly answer:
- what blocks export
- what blocks submit
- what can be fixed later
- what is only advisory


# ============================================================
# 6. BLOCKING VISIBILITY RULE
# ============================================================

Validation Center must visibly summarize blocking state.

At minimum it must show:

- blocking_count
- warning_count
- info_count
- last_validation_timestamp
- current_validation_stage
- export_blocked yes/no
- submit_blocked yes/no

The user must never have to infer blocking state
from raw finding rows alone.


# ============================================================
# 7. AFFECTED SCOPE NAVIGATION
# ============================================================

Validation Center must support jump-to-scope behavior.

Supported targets should include:

- jump to block in Main Editor
- jump to asset in Asset Studio
- jump to project metadata in Project Overview
- jump to export section in Export / Publish Center
- jump to template/runtime binding section where applicable

Jump navigation must preserve project context.

A creator must be able to move from finding
to editable or inspectable scope quickly.


# ============================================================
# 8. STAGE-SPECIFIC DISPLAY BEHAVIOR
# ============================================================

Validation Center should adapt display emphasis by stage.

Editing validation emphasis:
- local structure
- missing fields
- invalid references
- quick-fix style feedback

Export validation emphasis:
- runtime resolution
- template/asset completeness
- graph continuity
- export contract readiness

Publish validation emphasis:
- seller/title/release linkage
- submission readiness
- moderation-facing completeness
- boundary compliance

The stage-specific emphasis must not hide formal severity.


# ============================================================
# 9. RELATION TO MAIN EDITOR
# ============================================================

Validation Center must integrate tightly with Main Editor.

Main Editor may show inline diagnostics,
but Validation Center is the formal diagnostic hub.

Validation Center must support:
- jump to failing block
- return to last validation view
- preserve selection context where possible

Main Editor should not need to re-interpret validation truth.
It should consume Validation Center-compatible results.


# ============================================================
# 10. RELATION TO ASSET STUDIO
# ============================================================

Validation Center must integrate with Asset Studio.

Typical asset-related findings include:
- missing required asset
- invalid asset family
- incompatible runtime usage scope
- invalid export metadata
- prohibited Persona overlap
- unresolved binding

Validation Center must support direct asset inspection routing
for these findings.


# ============================================================
# 11. RELATION TO PREVIEW STUDIO
# ============================================================

Validation Center and Preview Studio are related
but not equivalent.

Validation Center may display preview-relevant findings such as:
- preview incompatibility
- illegal preview binding
- missing preview-safe asset fallback
- mock boundary issues

However:
a successful preview does not replace formal validation.

Validation Center must preserve this distinction.


# ============================================================
# 12. RELATION TO EXPORT / PUBLISH CENTER
# ============================================================

Validation Center must integrate with Export / Publish Center.

Export / Publish Center should consume validation summary,
but Validation Center remains the authoritative diagnostics surface.

Validation Center must make explicit:
- why export is blocked
- why submit is blocked
- what stage is failing
- what scope must be fixed first

Export / Publish Center must not hide blocking causes
behind generic failure messages.


# ============================================================
# 13. RERUN BEHAVIOR
# ============================================================

Validation Center must support explicit rerun actions.

Minimum rerun actions:

- rerun_editing_validation
- rerun_export_validation
- rerun_publish_validation

Rerun behavior must be explicit about basis:
- working_state basis where supported
- official saved revision basis where required

Validation Center must show when a result is:
- stale
- running
- completed
- not_run

The user must know whether they are looking
at fresh or stale diagnostics.


# ============================================================
# 14. RESULT FRESHNESS RULE
# ============================================================

Validation Center must surface result freshness.

Minimum freshness indicators:

- last_run_at
- basis_type
- basis_ref where applicable
- stale_after_structural_change yes/no

Examples:
- "editing validation run on current working state"
- "export validation run on revision R42"
- "publish validation run on export package E13"

Freshness matters because working state may diverge
from previously validated saved state.


# ============================================================
# 15. EMPTY / SUCCESS STATES
# ============================================================

Validation Center must support clear success states.

Examples:
- no blocking issues
- no warnings
- export validation passed
- publish validation passed

Success states must remain stage-specific.

"Everything is valid" must never mean
"everything is published."

Validation success and publish success are separate concepts.


# ============================================================
# 16. ROLE-AWARE ACCESS
# ============================================================

Validation Center must be role-aware.

owner:
- full validation visibility
- rerun authority

editor:
- validation visibility
- rerun authority where allowed

reviewer:
- validation visibility
- comment or observation access
- no hidden mutation authority implied

publisher:
- validation visibility
- stage relevance for export/submit decisions

Validation Center must remain accessible enough
for non-authoring roles that need release confidence.


# ============================================================
# 17. COMMENT / REVIEW RELATION
# ============================================================

Validation Center may integrate with review/comment systems.

Examples:
- attach review comment to finding
- mark finding acknowledged
- mark finding intentionally deferred where policy allows

But comments must not alter formal validation truth.

Only rerun or new validation results may change
formal finding state.


# ============================================================
# 18. MVP PRIORITY
# ============================================================

Initial implementation priority should be:

Priority 1:
- stage tabs or equivalent
- severity counts
- findings list
- jump-to-scope
- rerun validation

Priority 2:
- grouping/filter modes
- freshness indicators
- export/submit blocked indicators

Priority 3:
- comment/review integration
- richer diagnostic trace views

This is a valid staged implementation path.


# ============================================================
# 19. FINAL ARCHITECTURAL RULE
# ============================================================

Validation Center is the Builder subsystem
for formal validation visibility and actionability.

Core summary:

- validation stages must remain distinct
- severity must remain explicit
- findings must remain structured
- export/submit blocking must be visible
- affected scope jump is mandatory
- rerun behavior must be explicit
- success state must not be confused with publish state
