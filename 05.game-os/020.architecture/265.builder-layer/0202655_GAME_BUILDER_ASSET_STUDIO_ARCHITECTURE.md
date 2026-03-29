# ============================================================
# GAME BUILDER ASSET STUDIO ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official Asset Studio architecture of Game Builder.

This architecture defines the Builder-side authoring system
for non-Persona game material assets.

It covers:
- asset browser
- asset upload and replacement
- pixel art editing
- unit art editing
- building art editing
- palette and variant generation
- asset binding inspection
- runtime/template compatibility checks
- non-Persona material boundary enforcement


# ============================================================
# 1. ROLE OF ASSET STUDIO
# ============================================================

Asset Studio is the Builder subsystem responsible for
material game assets that do not belong to Persona truth.

Asset Studio must support creators in:
- selecting template-default assets
- replacing project assets
- composing variant assets
- editing simple material assets
- binding assets to project/runtime/template structures
- preparing asset-compatible export packages

Asset Studio is not:
- a Persona truth editor
- a raw unrestricted art program
- a bypass for runtime/template requirements


# ============================================================
# 2. ASSET STUDIO DOMAINS
# ============================================================

Asset Studio must contain the following explicit domains:

- asset browser domain
- asset import domain
- asset editor domain
- asset variant domain
- asset binding domain
- asset validation domain
- asset export metadata domain

These domains must remain distinct enough
for implementation and permission control.


# ============================================================
# 3. PRIMARY ASSET CATEGORIES
# ============================================================

Asset Studio must support, at minimum:

- pixel art assets
- unit art assets
- building art assets
- icon assets
- ui material assets
- map prop assets
- tileset assets

The initial focus should prioritize:

- pixel enemy/boss/material assets
- unit art assets
- building art assets

These are the first-class Builder-owned material assets.


# ============================================================
# 4. ASSET BROWSER
# ============================================================

The Asset Browser is the primary discovery surface.

It must support:
- asset list/grid browsing
- asset search
- asset filter by type/family/status
- asset preview
- project usage visibility
- template default visibility
- variant visibility

Each asset entry should expose:
- asset_ref
- asset_type
- asset_family
- project scope
- runtime usage scope
- template origin where applicable
- variant count where applicable
- validation status where applicable

The browser must not hide whether an asset is:
- required
- optional
- unresolved
- invalid
- derived from template
- project override


# ============================================================
# 5. ASSET IMPORT / UPLOAD
# ============================================================

Asset Studio must support explicit asset import.

Supported initial import classes:
- raster image upload
- sprite sheet upload
- tileset upload
- icon upload

Import must classify each asset as:
- raw uploaded asset
- template replacement asset
- project-owned custom asset
- derived variant asset

Import must capture metadata for:
- asset_type
- usage_scope
- runtime_family compatibility
- export format compatibility
- lineage/origin
- hash or equivalent integrity marker

Imported assets must not become active bindings
without explicit binding or approval path.


# ============================================================
# 6. ASSET REPLACE MODEL
# ============================================================

Asset replacement must be a first-class operation.

The Builder must support:
- replace template default asset
- replace currently bound project asset
- revert to template default
- switch among project variants

Replacement must preserve:
- binding visibility
- lineage visibility
- required asset family status
- export metadata integrity

Replacement must not silently break
required asset family completeness.


# ============================================================
# 7. PIXEL ART EDITOR
# ============================================================

The Pixel Art Editor is the material editor
for small raster assets such as:

- enemy sprites
- boss sprites
- item icons
- map props
- ui icons
- small tiles

The Pixel Art Editor should prioritize:

- template clone mode
- part replacement mode
- recolor mode
- limited draw mode

The initial implementation does not require
a fully unrestricted professional art suite.

Minimum pixel editor capabilities:
- pixel canvas
- palette selection
- basic draw/erase
- fill
- mirror where useful
- layer visibility
- export preview

Pixel editing must remain project-aware
and export-aware.


# ============================================================
# 8. UNIT ART EDITOR
# ============================================================

The Unit Art Editor is the material editor
for tactical / rpg unit-facing assets.

Typical targets:
- faction units
- generic soldiers
- class variants
- enemy units
- companion-like non-Persona units

The Unit Art Editor should prioritize:

- template selection
- part replacement
- recolor by faction/profile
- emblem overlay
- equipment swap
- pose/profile selection
- limited correction

Minimum unit editor concerns:
- body/base layer
- armor/clothing layer
- weapon layer
- emblem/accessory layer
- shadow layer
- export profile selection

Unit Art Editor must remain compatible with:
- strategy runtime
- rpg runtime
where applicable.


# ============================================================
# 9. BUILDING ART EDITOR
# ============================================================

The Building Art Editor is the material editor
for structure-facing assets.

Typical targets:
- houses
- shops
- castles
- towers
- farms
- walls
- gates
- military buildings
- civic buildings

The Building Art Editor should prioritize:

- building template selection
- part replacement
- ornament replacement
- recolor
- state variant generation
- limited correction

Minimum building editor concerns:
- foundation/base layer
- wall layer
- roof layer
- door/window layer
- ornament/sign layer
- shadow layer
- state variants

Building state variant support should be explicit:
- normal
- upgraded
- damaged
- destroyed
- occupied/faction-changed where supported


# ============================================================
# 10. LAYER MODEL
# ============================================================

Asset Studio must support layer-aware editing
for eligible asset classes.

Minimum layer model requirements:
- ordered layers
- visibility toggle
- active layer selection
- locked layer support where useful
- export flattening or profile-aware export

Recommended initial layer families:

Pixel:
- base
- line
- detail
- accessory
- shadow

Unit:
- body
- clothing_or_armor
- weapon
- emblem_or_accessory
- shadow

Building:
- foundation
- wall
- roof
- ornament
- shadow
- state_overlay

Layer awareness is important for variant generation.


# ============================================================
# 11. PALETTE AND VARIANT SYSTEM
# ============================================================

Asset Studio must support palette-driven variation.

Variant generation should support:
- faction color swap
- rarity color swap
- role/class color swap
- damage state variant
- upgrade state variant
- alternate emblem variant

The variant system must preserve lineage:
- source asset
- derived asset
- variant profile
- active binding state

A variant must not erase the source asset relationship.


# ============================================================
# 12. ASSET BINDING INSPECTOR
# ============================================================

Asset Studio must include an Asset Binding Inspector.

The inspector must answer:
- where the asset is used
- whether it is required
- which block/template/runtime consumes it
- whether it satisfies required asset family needs
- whether it has export-compatible metadata
- whether it violates Persona boundary rules

The inspector must support:
- bind asset
- rebind asset
- inspect dependent structures
- inspect template default source
- inspect variant lineage

Binding must remain explicit.


# ============================================================
# 13. TEMPLATE AND RUNTIME COMPATIBILITY
# ============================================================

Asset Studio must enforce compatibility with:
- runtime family
- template family
- template tier
- required asset set
- export profile

Examples:
- Strategy projects must be able to resolve unit/building/map-facing asset families
- RPG projects must resolve enemy/area/interface-facing assets
- Puzzle projects must resolve stage/icon/ui-facing assets
- VN projects must resolve presentation/ui-facing assets

Asset Studio must not allow illegal asset usage
to appear export-ready.


# ============================================================
# 14. NON-PERSONA BOUNDARY
# ============================================================

Asset Studio is for Builder-owned material assets.

Allowed:
- enemy sprites
- monster sprites
- unit art
- building art
- map props
- icons
- ui material
- tilesets

Prohibited:
- direct Persona truth editing
- treating generic material assets as Persona truth
- unrestricted Persona state capture or mutation

Persona references may appear only as:
- approved projection references
- approved cast-facing references
where explicitly allowed by GameOS runtime/builder rules

This boundary is mandatory.


# ============================================================
# 15. ASSET VALIDATION
# ============================================================

Asset Studio must surface asset-facing validation.

Validation concerns include:
- missing required asset
- invalid asset type
- invalid export metadata
- invalid dimensions/profile where relevant
- incompatible runtime usage scope
- unresolved binding
- prohibited Persona overlap
- missing variant/state set where required

Asset validation should classify:
- blocking
- warning
- info

Blocking issues must prevent export readiness
when they affect required asset families.


# ============================================================
# 16. ASSET EXPORT METADATA
# ============================================================

Every export-relevant asset must have explicit metadata.

Minimum export-relevant metadata may include:
- asset_ref
- asset_type
- asset_family
- runtime_usage_scope
- export_format
- dimensions_summary
- frame_count where applicable
- state_variant_summary where applicable
- palette_profile where applicable
- asset_hash

Asset Studio must make this metadata visible enough
for validation and export troubleshooting.


# ============================================================
# 17. SAVE / REVISION RELATION
# ============================================================

Asset Studio must participate in Builder save architecture.

Asset editing may affect:
- working state
- autosave snapshot
- official saved revision lineage

Asset Studio changes must not bypass
the distinction between:
- unsaved changes
- autosaved changes
- officially saved revision state

Asset-derived changes should be visible in dirty state.


# ============================================================
# 18. PREVIEW RELATION
# ============================================================

Asset Studio must integrate with Preview Studio.

Preview must be able to consume:
- currently bound assets
- preview-safe variants
- project overrides
- template fallback assets where appropriate

Preview may use unsaved working state
or saved revision state depending on preview basis,
but this basis must remain explicit.

Preview consumption of assets must remain sandboxed.


# ============================================================
# 19. MVP PRIORITY
# ============================================================

Initial implementation priority should be:

Priority 1:
- asset browser
- asset upload
- asset replace/rebind
- asset binding inspector

Priority 2:
- pixel art editor
- palette/variant generation

Priority 3:
- unit art editor
- building art editor

Priority 4:
- richer state variant tooling
- more advanced layered operations

This is a valid staged implementation path.


# ============================================================
# 20. FINAL ARCHITECTURAL RULE
# ============================================================

Asset Studio is the Builder subsystem
for non-Persona material game assets.

Core summary:

- asset browser is the primary discovery surface
- upload and replacement must be explicit
- pixel, unit, and building editors are first-class material editors
- layer and palette awareness are important
- binding inspection is mandatory
- runtime/template compatibility must be enforced
- non-Persona boundary must remain explicit
- asset validity must remain visible
