# ============================================================
# PERSONA OS ROOT FILE CLASSIFICATION
# ============================================================

status: canonical
layer: meta
domain: root-file-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Classifies root-level files into canonical handling groups.

# ============================================================
# REVIEW COLUMNS
# ============================================================

| file | auto_class | reason |
|---|---|---|
| 0000000_PERSONA_OS_INDEX.md | move_to_920_meta | review_or_meta_material |
| PERSONA_OS_CANONICAL_FULL.md | formal_output | formal_integrated_output |
| PERSONA_OS_INTEGRATED_CANONICAL.md | move_to_920_meta | review_or_meta_material |
| PERSONA_OS_INTEGRATED_CANONICAL_20260330_0752.md | move_to_920_meta | review_or_meta_material |
| PERSONA_OS_INTEGRATED_CANONICAL_20260330_1124.md | move_to_920_meta | review_or_meta_material |
| PERSONA_OS_INTEGRATED_CANONICAL_20260330_1125.md | move_to_920_meta | review_or_meta_material |

# ============================================================
# RULE
# ============================================================

- formal_output: may remain at root
- move_to_920_meta: should be moved under 920.meta
- move_to_999_dump: should be moved under 999.archive/999.dump
