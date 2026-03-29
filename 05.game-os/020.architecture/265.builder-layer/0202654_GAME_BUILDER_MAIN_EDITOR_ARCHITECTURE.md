# ============================================================
# GAME BUILDER MAIN EDITOR ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official Main Editor architecture of Game Builder.

This architecture defines the primary structured authoring surface
used for Builder projects.

It covers:
- editor shell
- structure tree
- block editing
- property inspection
- block lifecycle operations
- zone-aware editing
- save/dirty behavior
- inline validation behavior
- collaboration-aware lock behavior


# ============================================================
# 1. ROLE OF MAIN EDITOR
# ============================================================

The Main Editor is the primary authoring surface of Builder.

Its role is to let creators modify project content
through structured block-based editing.

The Main Editor must not behave like
an unrestricted schema editor by default.

The Main Editor must always remain:

- runtime-aware
- template-aware
- block-based
- save-aware
- validation-aware
- collaboration-aware


# ============================================================
# 2. MAIN EDITOR SHELL
# ============================================================

The Main Editor must use a stable three-panel shell.

left panel:
- structure tree
- search
- block filters
- quick add actions

center panel:
- active block editor surface
- block content editing
- inline diagnostics
- context-sensitive editing widgets

right panel:
- property inspector
- runtime/template info
- zone classification
- block metadata
- validation hint summary

top bar:
- project identity
- current block identity
- save state
- validate action
- preview action
- export shortcut

bottom or inline status area:
- dirty state
- autosave state
- latest official save
- validation summary


# ============================================================
# 3. STRUCTURE TREE
# ============================================================

The structure tree is the primary navigation model.

The structure tree must show:

- block hierarchy
- block type
- block title
- block validation state
- block lock state where applicable
- visibility or enabled state where relevant

The structure tree must support:

- select block
- create child block where allowed
- reorder block where allowed
- clone block where allowed
- archive/remove block where allowed
- search/filter by block type or text

A structure tree item must never hide
whether it is invalid or locked.


# ============================================================
# 4. BLOCK AS PRIMARY EDIT UNIT
# ============================================================

The Main Editor must treat a block
as the minimum structured editing unit.

Every block must expose at least:

- block_id
- block_type
- block_title
- parent_block_id where applicable
- order_index
- zone_classification
- validation_state
- lock_state where applicable
- content_payload

A block may only be edited according to:
- runtime family rules
- template rules
- zone rules
- role permissions


# ============================================================
# 5. BLOCK TYPE FAMILIES
# ============================================================

The Main Editor must support runtime-family-specific block sets.

VN / Dating examples:
- scene
- dialogue
- choice
- branch
- route
- ending

RPG examples:
- area
- npc
- quest
- objective
- event
- battle
- reward
- shop

Puzzle examples:
- stage
- clear_condition
- fail_condition
- score_rule
- retry_rule
- stage_reward

Strategy examples:
- map
- faction
- unit_set
- turn_rule
- resource_rule
- building_rule
- victory_rule
- defeat_rule

The editor must not allow block types
that are not approved for the resolved runtime family.


# ============================================================
# 6. BLOCK CREATION RULE
# ============================================================

Block creation must be guided, not unrestricted.

When creating a block, the editor must resolve:

- current project runtime family
- current template family
- current parent block type
- allowed child block types
- required block constraints

The editor must support:

- add sibling block
- add child block
- add template-defined block preset

The editor must not offer illegal block types
for the current location.


# ============================================================
# 7. BLOCK UPDATE RULE
# ============================================================

Block update must be field-aware and zone-aware.

A block update may target:

- content fields
- metadata fields
- ordering fields where allowed
- linkage fields where allowed
- asset reference fields where allowed

Block updates must be validated against:

- required field rules
- runtime family constraints
- template constraints
- zone editing constraints

An update that violates protected zones
must be blocked in the ordinary edit path.


# ============================================================
# 8. BLOCK REORDER RULE
# ============================================================

The editor must support explicit reorder
for order-sensitive block families.

Examples:
- scene order
- dialogue order
- quest order
- stage order
- faction/unit order where allowed

Reorder must respect:
- parent-child legality
- runtime continuity rules
- template structure rules

A reorder that breaks mandatory continuity
must produce blocking validation.


# ============================================================
# 9. BLOCK CLONE RULE
# ============================================================

The editor may support block cloning
for eligible block families.

Clone is useful for:
- repeated dialogue patterns
- repeated event structures
- repeated stage skeletons
- repeated quest skeletons
- repeated unit/building templates

A cloned block must receive:
- new block identity
- refreshed lineage marker
- copied editable content
- preserved type compatibility
- invalidated unique references where required

The editor must not silently duplicate
identity-critical references incorrectly.


# ============================================================
# 10. BLOCK DELETE / ARCHIVE RULE
# ============================================================

The editor must distinguish:

- hard delete where safe
- archive/remove from active structure where safer

For initial Builder scope,
archive-style removal is preferred
when structural integrity matters.

Deletion/removal must check:
- child block dependencies
- inbound references
- required template block status
- continuity impact

The editor must warn or block
when deletion would break required structure.


# ============================================================
# 11. PROPERTY INSPECTOR
# ============================================================

The property inspector must expose
structured block metadata and bindings.

Minimum inspector categories:

- identity
- type
- runtime linkage
- template linkage
- zone classification
- asset references
- validation hints
- ordering metadata
- lock metadata where applicable

The property inspector must make it explicit whether a field is:

- editable
- inherited
- protected
- override-only
- invalid
- unresolved


# ============================================================
# 12. ZONE-AWARE EDITING RULE
# ============================================================

The Main Editor must enforce zone classifications.

Minimum zone classes:

- protected_zone
- editable_zone
- advanced_override_zone

protected_zone:
- not editable through normal editing flow

editable_zone:
- safe for normal authoring changes

advanced_override_zone:
- editable only when advanced path is enabled
- requires elevated validation awareness

The editor must visibly indicate zone class
for the active block or field.


# ============================================================
# 13. DIRTY STATE IN EDITOR
# ============================================================

The Main Editor must visibly track:

- clean
- unsaved_changes
- autosaved_only
- validation_failed
- export_ready where relevant at project level

The editor must show these without requiring navigation
to another screen.

A creator must always know whether the current block/project
has unsaved work.


# ============================================================
# 14. SAVE TRIGGER RULE
# ============================================================

The Main Editor must support:

- explicit save
- autosave trigger
- lightweight validation on save where applicable

Explicit save:
- creates official saved revision through Builder save path

Autosave:
- captures recovery snapshot only

The editor must never imply that autosave equals official save.

The save action must be available from the editor shell.


# ============================================================
# 15. INLINE VALIDATION RULE
# ============================================================

The Main Editor must surface inline validation
close to the edited structure.

Inline validation may show:

- missing required field
- invalid reference
- illegal child block
- broken target reference
- unresolved asset binding
- protected zone violation attempt

The editor should support:
- block-level severity badge
- field-level error indicator
- jump-to-related-reference action where possible

Inline validation is supportive,
but does not replace Validation Center.


# ============================================================
# 16. SEARCH / FILTER RULE
# ============================================================

The Main Editor should support project-scale navigation aids.

Minimum supported discovery actions:

- search by block title
- search by block id
- filter by block type
- filter by validation severity
- filter by locked state where applicable
- filter by unresolved asset state where applicable

Search and filter must not hide critical invalid state silently.


# ============================================================
# 17. PREVIEW / VALIDATE / EXPORT ENTRY FROM EDITOR
# ============================================================

The Main Editor must provide direct access to:

- Preview Studio
- Validation Center
- Export / Publish Center

The editor may provide quick actions for:
- validate current block scope
- validate project
- preview current structure context
- open export readiness summary

The editor must not directly publish.


# ============================================================
# 18. ROLE AND LOCK AWARENESS
# ============================================================

The Main Editor must be role-aware.

owner:
- full authoring access

editor:
- authoring access according to granted permissions

reviewer:
- read/comment oriented access
- no unrestricted mutation

publisher:
- usually not primary authoring role by default

The Main Editor must support lock awareness.

Minimum lock concepts:
- project lock where applicable
- block lock where applicable

A locked block must show:
- lock state
- lock holder where policy allows
- edit restriction status


# ============================================================
# 19. FAMILY-SPECIFIC EDITOR SPECIALIZATION
# ============================================================

The Main Editor shell is shared,
but the center editing surface may specialize by runtime family.

VN / Dating:
- dialogue composer
- branch editor
- route/ending editor

RPG:
- quest/event editor
- area progression editor
- battle preset editor

Puzzle:
- stage rule editor
- score/clear/fail editor

Strategy:
- map/faction/unit rule editor
- turn/resource/building editor

These specializations must remain inside
the common Builder state and save architecture.


# ============================================================
# 20. FINAL ARCHITECTURAL RULE
# ============================================================

The Main Editor is the primary structured authoring surface
of Game Builder.

Core summary:

- three-panel editor shell is mandatory
- structure tree is the main navigation surface
- blocks are the primary edit unit
- zone-aware editing is mandatory
- save and autosave must remain distinct
- inline validation must be visible
- role and lock awareness must be explicit
- editor must connect naturally to preview, validation, and export
