# ============================================================
# BUSINESS OS POST CLOSURE REVISION RULE
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Define how BusinessOS must be revised after canonical closure.
- Prevent regression into unresolved draft carryover.
- Keep future changes explicit, auditable, and authority-safe.

closure_precondition:
- BusinessOS is already canonically closed under the active audit rule.
- Current active authority is defined by the active authority set manifest.

revision_rule:
- Post-closure changes must be written as explicit new canonical revisions.
- Do not silently mutate the meaning of the closure point.
- Do not re-open old archived helper artifacts as active authority.
- Do not downgrade canonical files back into draft workflow.

allowed_revision_patterns:
- additive canonical memo
- additive canonical replacement file with explicit supersession statement
- additive meta clarification file
- controlled archive movement after supersession
- controlled integrated rebuild after canonical change

forbidden_revision_patterns:
- restoring archive files as implicit authority
- editing historical helper artifacts and treating them as current source
- reintroducing old integrated outputs into active reading flow
- using conversation context instead of in-repo authority records
- converting current canonical files back into draft-only operation

supersession_rule:
- When a newer explicit canonical file says it supersedes an older one,
  the newer explicit canonical file wins.
- If no explicit supersession exists, the currently active canonical file remains authoritative.

integrated_rebuild_rule:
- After a meaningful canonical revision, rebuild the clean integrated output.
- Integrated rebuild must continue excluding old integrated artifacts,
  archive contents, and helper insert artifacts.

archive_rule_after_revision:
- Files that become historical through explicit supersession may be moved to archive.
- Archive movement records history, but does not itself create new authority.

implementation_effect:
- Implementation must always follow the latest active canonical set.
- Revision work must preserve a clear line between active authority and historical trace.

result:
- BusinessOS post-closure revision behavior fixed as a canonical meta rule.
