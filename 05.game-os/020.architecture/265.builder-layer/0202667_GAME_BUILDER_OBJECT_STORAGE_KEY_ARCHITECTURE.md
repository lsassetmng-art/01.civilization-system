# ============================================================
# GAME BUILDER OBJECT STORAGE KEY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official object storage key architecture of Game Builder.

This architecture defines how heavy Builder payloads
should be organized in object storage.

It covers:
- raw asset payload keys
- derived asset payload keys
- autosave payload keys
- revision snapshot payload keys
- preview temporary payload keys
- export bundle keys
- manifest keys


# ============================================================
# 1. STORAGE KEY PRINCIPLE
# ============================================================

Object storage keys must be:

- deterministic enough for traceability
- partitioned enough for lifecycle cleanup
- explicit about payload class
- explicit about project or artifact scope

Keys must not depend on ambiguous mutable names only.


# ============================================================
# 2. REQUIRED TOP-LEVEL PARTITIONS
# ============================================================

Recommended top-level partitions:

- builder/raw-assets/
- builder/derived-assets/
- builder/autosaves/
- builder/revisions/
- builder/previews/
- builder/exports/
- builder/manifests/

Each partition must serve one lifecycle class only.


# ============================================================
# 3. RAW ASSET KEY SHAPE
# ============================================================

Recommended shape:

builder/raw-assets/{project_code}/{asset_ref}/{payload_hash_or_version}

This should support:
- source traceability
- easy project cleanup
- multi-version raw payload retention


# ============================================================
# 4. DERIVED ASSET KEY SHAPE
# ============================================================

Recommended shape:

builder/derived-assets/{project_code}/{source_asset_ref}/{derived_asset_ref}/{payload_hash_or_version}

This should preserve:
- parent-child lineage
- variant traceability
- export-safe payload separation


# ============================================================
# 5. AUTOSAVE KEY SHAPE
# ============================================================

Recommended shape:

builder/autosaves/{project_code}/{autosave_snapshot_ref}/{payload_hash_or_version}

Autosave payloads must remain clearly separate
from revisions and exports.


# ============================================================
# 6. REVISION SNAPSHOT KEY SHAPE
# ============================================================

Recommended shape:

builder/revisions/{project_code}/{revision_ref}/{payload_hash_or_version}

Revision payload storage should support:
- immutable restore
- export lineage
- later audit/debug where needed


# ============================================================
# 7. PREVIEW KEY SHAPE
# ============================================================

Recommended shape:

builder/previews/{project_code}/{preview_session_id}/{payload_class}/{payload_hash_or_version}

payload_class examples:
- temporary_state
- generated_visual
- replay_preview
- preview_debug_bundle

Preview keys must remain aggressively cleanup-friendly.


# ============================================================
# 8. EXPORT KEY SHAPE
# ============================================================

Recommended shape:

builder/exports/{project_code}/{export_package_code}/{artifact_class}/{payload_hash_or_version}

artifact_class examples:
- export_bundle
- runtime_contract
- asset_archive
- packaged_metadata

Exports must be lineage-traceable from project and package.


# ============================================================
# 9. MANIFEST KEY SHAPE
# ============================================================

Recommended shape:

builder/manifests/{project_code}/{manifest_class}/{manifest_ref}/{payload_hash_or_version}

manifest_class examples:
- asset_manifest
- export_manifest
- submission_manifest

Manifest keys must remain artifact-class explicit.


# ============================================================
# 10. FINAL ARCHITECTURAL RULE
# ============================================================

Builder object storage keys must remain lifecycle-explicit and lineage-friendly.

Core summary:

- each payload class gets its own partition
- project and artifact identity should appear in keys
- preview payloads must be easy to discard
- exports and manifests must remain traceable
