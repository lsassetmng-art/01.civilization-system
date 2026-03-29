# ============================================================
# GAME BUILDER STORAGE ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official storage architecture of Game Builder.

This architecture defines:

- database-stored Builder truth
- object-storage-stored Builder payloads
- revision storage boundaries
- autosave storage boundaries
- asset storage boundaries
- preview temporary storage boundaries
- export package storage boundaries
- lineage and hash responsibilities

This architecture is mandatory for Builder implementation.


# ============================================================
# 1. STORAGE ROLE OVERVIEW
# ============================================================

Game Builder storage must preserve explicit separation between:

- structured Builder truth
- heavy binary material
- temporary preview material
- export package material
- recovery-oriented autosave material

Core principle:

database stores structured truth  
object storage stores heavy payload  
temporary preview storage stores discardable material

No storage layer may collapse these concerns implicitly.


# ============================================================
# 2. PRIMARY STORAGE CLASSES
# ============================================================

The Builder storage architecture must distinguish:

- relational or structured database storage
- object storage
- temporary preview/session storage
- derived artifact storage

These are not interchangeable by default.


# ============================================================
# 3. DATABASE-STORED BUILDER TRUTH
# ============================================================

The database must store structured Builder truth.

Minimum database-stored categories:

- project metadata
- workspace linkage
- runtime binding
- template binding
- block structure
- block metadata
- asset metadata
- asset binding metadata
- official revision metadata
- autosave metadata
- validation result metadata
- export metadata
- submission metadata
- collaboration metadata
- lock metadata
- comment metadata

The database must not be the primary storage
for large raw binary asset payloads by default.


# ============================================================
# 4. OBJECT-STORAGE-STORED MATERIAL
# ============================================================

Object storage must store heavy Builder payloads.

Minimum object-stored categories:

- uploaded raw assets
- derived assets
- pixel art image payloads
- unit art image payloads
- building art image payloads
- tileset payloads
- sprite sheet payloads
- icon atlases
- preview-generated heavy artifacts
- export bundles
- export manifests when large
- replay-like preview materials where applicable

Object storage must not replace the database
for structured truth and linkage metadata.


# ============================================================
# 5. PROJECT STORAGE BOUNDARY
# ============================================================

A Builder project must be represented through a split model.

Database side:
- project identity
- project status
- runtime family binding
- runtime profile binding
- ruleset profile binding
- template profile binding
- project summary
- latest revision pointers
- latest autosave pointers

Object storage side:
- optional large derived project blobs where needed
- export-facing packaged material derived from project state

The project itself remains database-centered as authoring truth.


# ============================================================
# 6. BLOCK STORAGE BOUNDARY
# ============================================================

Blocks are structured authoring objects
and must be database-first.

Database must store:
- block identity
- block type
- parent relationship
- order index
- structural metadata
- block payload as structured data
- block validation summary

Block payloads must remain queryable enough
for validation, navigation, and fix targeting.

Blocks should not default to opaque blob storage only.


# ============================================================
# 7. REVISION STORAGE BOUNDARY
# ============================================================

Official saved revisions are formal Builder truth
and must remain durable and immutable.

Database must store:
- revision_ref
- project_code
- revision_number or version
- created_at
- created_by
- content_hash
- runtime/template/ruleset binding summary
- validation summary
- export eligibility summary where applicable

Database may also store structured revision payload references.

Object storage may store:
- large revision snapshots
- packaged revision-state blobs
- export-derived revision artifacts

Revision identity and lineage must always remain database-visible.


# ============================================================
# 8. AUTOSAVE STORAGE BOUNDARY
# ============================================================

Autosave is recovery-oriented, not formal release truth.

Database must store:
- autosave snapshot identity
- project_code
- snapshot timestamp
- snapshot hash
- origin metadata
- restore eligibility metadata

Object storage may store:
- larger autosave payload blobs
- recovery-oriented serialized working state

Autosave must remain distinguishable from official revisions
in both metadata and storage lineage.


# ============================================================
# 9. ASSET STORAGE BOUNDARY
# ============================================================

Assets require split storage.

Database must store:
- asset identity
- asset type
- asset family
- project linkage
- source type
- template origin where applicable
- variant metadata
- palette metadata
- export compatibility metadata
- usage scope
- asset hash
- active status

Object storage must store:
- raw uploaded asset payload
- edited image payload
- sprite sheet payload
- tileset payload
- atlas payload
- derived variant payload
- preview-generated visual payload when retained

Asset truth is metadata-first in database,
payload-first in object storage.


# ============================================================
# 10. PIXEL / UNIT / BUILDING ASSET STORAGE
# ============================================================

Pixel art, unit art, and building art assets
must all follow a split storage model.

Database must store:
- profile linkage
- layer summary
- variant summary
- export summary
- runtime usage scope
- project binding
- asset lineage
- current active derived payload ref

Object storage must store:
- canvas-derived raster payload
- layered export image payload
- sprite sheet payload
- building state variant image payload
- unit portrait/battle sheet payload

The database must remain able to answer:
- what this asset is
- where it is used
- whether it is export-compatible
- whether it violates Persona boundaries


# ============================================================
# 11. PREVIEW STORAGE BOUNDARY
# ============================================================

Preview storage must remain temporary and isolated.

Preview storage may use:
- in-memory session state
- temporary object payloads
- temporary database session records

Preview storage must store only what is necessary for:
- session continuity
- recoverable preview state if supported
- debug or inspection surfaces where approved

Preview storage must never become production truth storage.

Preview data must be:
- clearly marked preview-only
- discardable
- time-bounded
- non-authoritative


# ============================================================
# 12. VALIDATION STORAGE BOUNDARY
# ============================================================

Validation is metadata-rich and should be database-first.

Database must store:
- validation_result_ref
- project_code
- revision_ref where applicable
- validation_stage
- severity counts
- finding records
- affected scope references
- timestamps

Object storage may store:
- large auxiliary diagnostics
- generated analysis bundles
- heavy trace artifacts where necessary

Validation result discoverability must remain database-visible.


# ============================================================
# 13. EXPORT STORAGE BOUNDARY
# ============================================================

Export packages are derived artifacts.

Database must store:
- export_package_code
- project_code
- frozen_revision_ref
- runtime contract linkage
- export hash
- package summary
- asset manifest linkage
- export status
- timestamps

Object storage must store:
- export bundle payload
- export manifest payload where large
- runtime contract artifact payload where serialized
- packaged asset archive
- packaged runtime-ready metadata blob

The export package payload is object-stored,
but export lineage truth remains database-visible.


# ============================================================
# 14. SUBMISSION STORAGE BOUNDARY
# ============================================================

Submission is lifecycle metadata and must be database-first.

Database must store:
- submission_request_ref
- project_code
- export_package_code
- release_code
- seller linkage summary
- validation linkage
- moderation linkage
- submission status
- timestamps

Object storage may store:
- submission bundle payload
- large handoff attachments
- moderation-facing packed artifacts where required

Submission identity must remain database-visible.


# ============================================================
# 15. HASH / LINEAGE RULE
# ============================================================

All major Builder storage objects must support lineage.

Minimum lineage-tracked objects:
- official revision
- autosave snapshot
- asset
- derived asset
- export package
- asset manifest
- runtime export contract artifact
- submission bundle

Each should maintain:
- identity
- parent or source reference where applicable
- hash or equivalent integrity marker
- creation timestamp

Lineage is mandatory for export, recovery, and audit clarity.


# ============================================================
# 16. MANIFEST RULE
# ============================================================

Builder must maintain explicit manifest concepts.

Important manifest classes:
- asset manifest
- export manifest
- runtime export contract manifest or equivalent
- submission handoff manifest where applicable

Manifest metadata should be database-discoverable.

Manifest payload may be object-stored when large.

A manifest must always be traceable to:
- project
- revision
- export package where applicable


# ============================================================
# 17. RETENTION / CLEANUP RULE
# ============================================================

Retention policy must differ by storage class.

Official revisions:
- durable
- long retention

Autosave snapshots:
- bounded retention
- recoverability-oriented
- cleanup-safe after supersession/expiry

Preview temporary data:
- short retention
- aggressively discardable

Export packages:
- retained according to publish and audit needs

Derived preview artifacts:
- discard when expired unless explicitly retained for debugging policy

Retention boundaries must remain explicit.


# ============================================================
# 18. PERSONA BOUNDARY STORAGE RULE
# ============================================================

Builder storage must not treat non-Persona material assets
as Persona truth.

Database and object storage must clearly distinguish:

- Builder-owned material assets
- approved Persona projection references

Builder storage must not become a side channel
for Persona truth mutation or unauthorized Persona state capture.

This rule is mandatory.


# ============================================================
# 19. RECOVERY RULE
# ============================================================

Recovery flows must use explicit storage lineage.

Recovery must be able to answer:
- latest official revision
- latest autosave snapshot
- whether autosave is newer than official save
- what can be restored safely
- what remains preview-only or discardable

Recovery must not depend on ambiguous storage overwrites.


# ============================================================
# 20. FINAL ARCHITECTURAL RULE
# ============================================================

Game Builder storage must remain split and explicit.

Core summary:

- database stores structured Builder truth
- object storage stores heavy payloads
- preview storage is temporary and isolated
- revision, autosave, asset, export, and submission
  each have explicit storage boundaries
- lineage and hash visibility are mandatory
- non-Persona Builder assets must remain separate
  from Persona truth
