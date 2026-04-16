# ============================================================
# PROJECT FLOW REVIEW AND CONFIRMATION FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines confirmation and review flows across proposals and outputs.

schedule_proposal_flow:
1. proposal is generated
2. proposal may be adjusted
3. proposal is reviewed by user
4. proposal is confirmed or discarded
5. confirmed proposal becomes operational schedule baseline

report_review_flow:
1. report draft is generated
2. user edits report draft
3. report is reviewed
4. report is approved when applicable
5. export or external use occurs after review-aware confirmation

customer_material_flow:
1. material is generated
2. wording is adjusted where needed
3. material is reviewed for external use
4. material is exported or presented

important_rules:
- export completion does not auto-approve content
- confirmation is not the same as export
- review state must remain visible before external use
