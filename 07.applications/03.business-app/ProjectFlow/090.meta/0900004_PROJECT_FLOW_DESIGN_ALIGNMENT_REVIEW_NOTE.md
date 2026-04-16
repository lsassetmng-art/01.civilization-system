# ============================================================
# PROJECT FLOW DESIGN ALIGNMENT REVIEW NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Summarizes current design alignment and remaining review points.

current_alignment_summary:
- ProjectFlow is fixed as a field operation front
- ERP integration is fixed as shared BusinessOS mediated
- subscription and read-only rules are fixed
- smartphone and pc parity is fixed
- spreadsheet export and report draft generation are fixed
- form intake, memo, comment, light automation are added
- template and WBS proposal are added
- timeline, gantt, and live dashboard are added

remaining_review_points:
- wording consistency between "proposal", "draft", and "confirmed"
- whether memo and comment should share common search behavior
- whether template milestone definition needs its own physical model later
- whether automation notification history needs a dedicated logical model later
- whether gantt and timeline require separate export semantics later
