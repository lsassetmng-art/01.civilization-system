# CX22073JW DB Design Alignment Exact

generated_at: 2026-05-02 23:09:31 +0900
status: FAIL_HISTORY_DETAIL_COVERAGE_MISSING

## Current Canon

CX22073JW is the AI-assisted knowledge/reference foundation.

It holds:
- foundation knowledge topics/materials
- robot role/model reference knowledge
- earth history detail references
- Civilization foundation history detail references
- exam question references only where the data is actually question data

## History Boundary

| Data kind | Canonical location |
|---|---|
| Earth history detail | cx22073jw.earth_history_detail_entry |
| Civilization internal history detail | cx22073jw.civilization_foundation_history_detail_entry |
| Exam questions | cx22073jw.civilization_exam_question_bank |
| Unified robot detail access | cx22073jw.vw_robot_model_history_detail_unified_reference_v1 |
| Unified robot exam access | cx22073jw.vw_robot_model_history_exam_unified_reference_v1 |

## Important Rule

History detail is not exam data.

Exam data is question-only.

## Counts

| Metric | Count |
|---|---:|
| db_object_total | 1004 |
| earth_detail_count | 119 |
| foundation_detail_count | 15 |
| unified_detail_count | 134 |
| robot_unified_detail_count | 1669 |
| earth_exam_count | 66 |
| foundation_exam_count | 8 |
| unified_exam_count | 74 |
| robot_unified_exam_count | 814 |
| missing_required_count | 0 |
| missing_history_detail_model_count | 9 |
| missing_history_exam_model_count | 13 |

## Safety Boundary

- War/security/crisis records are reference material only.
- Prometheus destruction/resistance/suppression records are Civilization world-setting references only.
- Do not use CX history references for real-world violence, surveillance, coercion, discrimination, or wrongdoing.
- Modern political/economic facts require fresh external verification when used outside internal world/reference context.

## Evidence

- /data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/920.meta/history_detail_phase10_registry_alignment_20260502_230926/000_HISTORY_DETAIL_PHASE10_FINAL_REPORT.md
- /data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/920.meta/history_detail_phase10_registry_alignment_20260502_230926/010_cx22073jw_objects.tsv
- /data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/920.meta/history_detail_phase10_registry_alignment_20260502_230926/020_required_objects.tsv
- /data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/920.meta/history_detail_phase10_registry_alignment_20260502_230926/030_history_counts.tsv
- /data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/920.meta/history_detail_phase10_registry_alignment_20260502_230926/040_model_history_coverage.tsv
- /data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/920.meta/history_detail_phase10_registry_alignment_20260502_230926/050_exam_counts.tsv
- /data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/920.meta/history_detail_phase10_registry_alignment_20260502_230926/060_final_gate.tsv
