# ============================================================
# PROJECT FLOW MULTILINGUAL FINAL REVIEW SHEET
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Final review sheet for multilingual completeness and consistency.

review_sections:

scope_review:
- [ ] Japanese is included
- [ ] English is included
- [ ] UI wording is included
- [ ] customer-facing materials are included
- [ ] export headers are included
- [ ] one-page summary is included

consistency_review:
- [ ] one concept has one preferred label per language
- [ ] proposal and confirmed remain distinct
- [ ] reviewed and approved remain distinct
- [ ] read-only wording is clear
- [ ] customer-facing labels avoid unnecessary jargon

output_review:
- [ ] one customer-facing material uses one locale consistently
- [ ] one export output uses one locale consistently
- [ ] headings and section labels align with selected locale
- [ ] fallback leakage is detectable

device_review:
- [ ] smartphone and pc have the same multilingual capability
- [ ] device differences are layout-only

operation_review:
- [ ] label packs are scoped
- [ ] bilingual label catalog exists
- [ ] presets are scoped
- [ ] future language addition does not break current key model
