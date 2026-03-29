# ============================================================
# GAME BUILDER SCREEN ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official screen architecture of Game Builder.

This architecture defines the mandatory screen set,
screen responsibilities,
screen-to-screen transitions,
and the visible state model of the Builder Layer.

The screen architecture must support:

- template-first creation
- block-based editing
- explicit save visibility
- explicit validation visibility
- preview-safe testing
- export readiness
- submission readiness


# ============================================================
# 1. SCREEN MODEL OVERVIEW
# ============================================================

The initial official Builder screen set is:

- Builder Home
- Template Gallery
- Project Overview
- Main Editor
- Asset Studio
- Preview Studio
- Validation Center
- Export / Publish Center

These screens are mandatory for initial implementation.

A Builder implementation may add secondary utility screens,
but may not omit these primary screens
without replacing their responsibilities explicitly.


# ============================================================
# 2. GLOBAL SCREEN PRINCIPLES
# ============================================================

All Builder screens must show enough context for the creator to know:

- current workspace
- current project
- current runtime family
- current template
- current save state
- current validation state
- current export state
- current submission state where relevant

Global navigation must remain stable.

The user must not become confused about whether they are:

- editing draft state
- viewing preview
- looking at validation results
- preparing export
- preparing submission

These distinctions must always remain visible.


# ============================================================
# 3. BUILDER HOME
# ============================================================

purpose:
Provide the main entry point to the Builder.

Builder Home responsibilities:
- workspace selection
- project listing
- project filtering
- quick project creation entry
- recent activity visibility
- status overview visibility

Builder Home must show:
- project cards or rows
- project status
- runtime family badge
- template family badge
- last updated timestamp
- last validation state
- export/submission state where applicable

Primary actions:
- create new project
- open existing project
- archive project
- duplicate project where allowed
- filter by runtime/template/status

Builder Home must not serve as the primary detailed editor.


# ============================================================
# 4. TEMPLATE GALLERY
# ============================================================

purpose:
Provide the official template-first project creation screen.

Template Gallery responsibilities:
- template family browsing
- template tier browsing
- template preview
- required asset family visibility
- required block visibility
- quick create from template

Template Gallery must show:
- template card
- runtime family
- tier badge
- complexity level
- supported genre
- sample preview
- required asset summary
- beginner/standard/advanced indication

Primary actions:
- inspect template
- select template
- create project from template

Template Gallery must clearly distinguish:
- visual novel templates
- dating templates
- rpg templates
- puzzle templates
- strategy templates


# ============================================================
# 5. PROJECT OVERVIEW
# ============================================================

purpose:
Provide the operational summary of one project.

Project Overview responsibilities:
- project metadata visibility
- runtime/template binding visibility
- save/revision visibility
- validation state visibility
- export state visibility
- submission state visibility
- collaborator visibility where applicable

Project Overview must show:
- project title
- project code
- workspace code
- title binding
- runtime profile
- ruleset profile
- template profile
- latest official revision
- latest autosave summary
- validation result summary
- export summary
- submission summary

Primary actions:
- open editor
- open asset studio
- open preview
- run validation
- open export/publish center

Project Overview is the operational dashboard for a project.


# ============================================================
# 6. MAIN EDITOR
# ============================================================

purpose:
Provide structured block-based authoring.

Main Editor responsibilities:
- block tree navigation
- block creation
- block editing
- block ordering
- property editing
- structural editing
- save trigger
- dirty state visibility

Main Editor layout must include:

left panel:
- structure tree
- block hierarchy
- block quick add
- outline and search

center panel:
- content editor surface
- form or graph editor depending on block type
- inline validation feedback where applicable

right panel:
- property inspector
- runtime binding info where relevant
- template zone info
- block-level validation hints

top bar:
- current project name
- current block
- save state
- validate action
- preview action
- export shortcut

Main Editor must remain block-based,
not arbitrary schema editing by default.


# ============================================================
# 7. ASSET STUDIO
# ============================================================

purpose:
Provide authoring and binding for non-Persona game material assets.

Asset Studio responsibilities:
- asset library browsing
- asset upload
- asset replacement
- pixel asset editing
- unit asset editing
- building asset editing
- palette and variant handling
- project asset binding

Asset Studio must support:
- template asset defaults
- project override binding
- variant binding
- required asset family visibility

Minimum sub-modes:
- asset browser
- pixel art editor
- unit art editor
- building art editor
- asset binding inspector

Asset Studio must clearly distinguish:
- Builder-owned material assets
- approved Persona projection references
- prohibited Persona truth editing


# ============================================================
# 8. PREVIEW STUDIO
# ============================================================

purpose:
Provide runtime-backed sandbox preview.

Preview Studio responsibilities:
- launch preview session
- display preview mode
- execute preview actions
- show mock state
- show preview-only outputs
- discard preview safely

Preview Studio must support:
- scene preview
- battle preview where relevant
- stage preview where relevant
- map preview where relevant
- full-flow preview where relevant

Preview Studio must visibly indicate:
- sandbox mode
- mock mode flags
- non-authoritative outputs
- discardability of preview state

Preview Studio must never look identical
to confirmed production state screens
without sandbox labeling.


# ============================================================
# 9. VALIDATION CENTER
# ============================================================

purpose:
Provide a formal screen for validation visibility and fixing workflow.

Validation Center responsibilities:
- show validation stage results
- group findings by severity
- group findings by block/asset/scope
- provide fix navigation
- provide re-run validation action

Validation Center must support:
- editing validation results
- export validation results
- publish validation results

Validation Center must show:
- blocking count
- warning count
- info count
- last validation timestamp
- affected scope
- summary
- fix hint where possible

Primary actions:
- run validation
- jump to failing block
- jump to failing asset
- refresh result


# ============================================================
# 10. EXPORT / PUBLISH CENTER
# ============================================================

purpose:
Provide the final Builder-side handoff surface.

Export / Publish Center responsibilities:
- export readiness visibility
- export package request
- export history visibility
- submission readiness visibility
- submission request creation
- submission state visibility

Export / Publish Center must show:
- frozen revision target
- runtime export contract summary
- required asset family resolution summary
- validation summary
- export history
- submission history

Primary actions:
- create export package
- inspect export result
- create submission
- inspect submission state

This screen must clearly distinguish:
- exported
- submitted
- approved externally
- published externally

Builder must not pretend that export equals publish.


# ============================================================
# 11. GLOBAL TOP BAR / STATUS BAR
# ============================================================

All major Builder screens should expose a stable global status area.

Minimum visible states:
- workspace
- project
- runtime family
- save state
- validation state
- export state

Recommended global actions:
- save
- validate
- preview
- open validation center
- open export center

The user must always know whether the current project is:
- saved
- dirty
- autosaved only
- validation blocked
- export ready
- already exported


# ============================================================
# 12. PRIMARY SCREEN TRANSITIONS
# ============================================================

Required transitions:

Builder Home
-> Template Gallery
-> Project Overview
-> Main Editor
-> Preview Studio
-> Validation Center
-> Export / Publish Center

Project Overview must be the primary hub for one project.

Main Editor must not hide access to:
- Asset Studio
- Preview Studio
- Validation Center
- Export / Publish Center

Validation Center and Export / Publish Center
must be reachable without losing project context.


# ============================================================
# 13. ROLE-AWARE SCREEN ACCESS
# ============================================================

Screen access must be role-aware.

owner:
- full access

editor:
- editing access
- asset access
- preview access
- validation access
- limited export/publish access according to policy

reviewer:
- read access
- validation access
- comment-oriented visibility
- no unrestricted mutation access

publisher:
- export/publish center access
- submission-oriented access
- no unrestricted authoring requirements by default

Screen access must not imply hidden permission escalation.


# ============================================================
# 14. SCREEN STATE VISIBILITY RULE
# ============================================================

The following must always be visible somewhere relevant:

- dirty state
- autosave state
- latest official saved revision
- validation result state
- export state
- submission state

These states must not be hidden behind deep navigation only.

A creator must always understand:
- whether current changes are officially saved
- whether current project is exportable
- whether project is blocked by validation
- whether submission already exists


# ============================================================
# 15. MVP SCREEN PRIORITY
# ============================================================

The initial implementation priority is:

Priority 1:
- Builder Home
- Template Gallery
- Project Overview
- Main Editor

Priority 2:
- Asset Studio
- Preview Studio
- Validation Center

Priority 3:
- Export / Publish Center

All must exist eventually,
but this priority order is valid for staged implementation.


# ============================================================
# 16. FINAL ARCHITECTURAL RULE
# ============================================================

Game Builder screen architecture must remain explicit,
role-aware,
state-visible,
and submission-oriented.

Core summary:

- Builder Home is the entry point
- Template Gallery is the creation gate
- Project Overview is the project dashboard
- Main Editor is the structured authoring surface
- Asset Studio manages material assets
- Preview Studio is sandbox-only
- Validation Center is the safety gate
- Export / Publish Center is the handoff gate
