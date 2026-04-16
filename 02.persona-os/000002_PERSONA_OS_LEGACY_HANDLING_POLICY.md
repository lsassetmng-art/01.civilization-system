# ============================================================
# PERSONA OS LEGACY HANDLING POLICY
# ============================================================

status: legacy-handling-policy
system: PersonaOS
canonical: true
scope: root-governance

purpose:
Defines how old or superseded PersonaOS design files are handled.

auto_mark_allowed:
- objectively superseded rebuilt integrated canonical files
- files already replaced by a newer rebuilt integrated canonical file

review_queue_only:
- older narrative files that may still contain useful context
- files omitted from canonical indexes
- files whose canonical status cannot be proven automatically

non_canonical_marker_rule:
A non-canonical marker may be added automatically only when:
- a newer authoritative rebuilt integrated canonical exists, and
- the target file is clearly an older rebuilt integrated canonical

forbidden:
- mass auto-marking of all non-indexed files
- deleting legacy files without explicit review
- changing exact anchor files into non-canonical files

review_outcome_categories:
- keep-canonical
- keep-supporting-non-canonical
- merge-then-retire
- retire-non-canonical
