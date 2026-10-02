# CX22073JW History Detail Unified Reference Exact

## Purpose

CX22073JW now separates historical knowledge into:

1. Earth history detail
2. Civilization foundation history detail
3. Civilization exam questions

The unified history detail view exists so robots can reference both Earth history and Civilization internal history through one stable read surface.

## Canonical Tables

| Domain | Canonical Table | Purpose |
|---|---|---|
| Earth history | cx22073jw.earth_history_detail_entry | Earth country / region / theme / world history detail |
| Civilization foundation history | cx22073jw.civilization_foundation_history_detail_entry | Civilization internal timeline / arc / system history detail |
| Exam questions | cx22073jw.civilization_exam_question_bank | Questions only |

## Canonical Views

| View | Purpose |
|---|---|
| cx22073jw.vw_history_detail_unified_reference_v1 | Unified detail reference |
| cx22073jw.vw_robot_model_history_detail_unified_reference_v1 | Robot model detail reference |
| cx22073jw.vw_history_exam_question_unified_reference_v1 | Unified history exam reference |
| cx22073jw.vw_robot_model_history_exam_unified_reference_v1 | Robot model exam reference |
| cx22073jw.vw_robot_model_history_detail_coverage_v1 | Robot model coverage gate |

## Boundary

History detail must not be stored as exam data.

Exam data must remain question-only.

## Safety

War, security, crisis, Prometheus destruction, resistance, suppression, and similar records are reference/worldview material only.
