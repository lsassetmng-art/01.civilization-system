# ============================================================
# PROJECT FLOW FINAL REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Practical checklist for reviewing design completeness before moving further.

review_focus:
- missing areas
- contradictory wording
- hidden implementation assumptions
- customer-facing material completeness
- proposal/draft/read-only consistency

checklist:
- [ ] no contradiction with shared BusinessOS boundary
- [ ] no contradiction with device parity rule
- [ ] no contradiction with read-only policy
- [ ] no contradiction with customer-facing output policy
- [ ] no contradiction with template/proposal editability rule
- [ ] no contradiction with light automation limitation
- [ ] no contradiction with source-of-truth split
- [ ] no contradiction with export/report review requirement
- [ ] no contradiction with non-development-current-state policy

exit_condition:
Design may be considered well-prepared
when major gaps and contradictions are resolved or explicitly logged.
