# ============================================================
# NAMECARD REVIEW CHECKLIST META
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: review_checklist
owner: Boss
prepared_by: Zero

purpose:
Provides a human review checklist for NameCardManager design review.

review_checklist:
- Is BusinessOS clearly the source of truth?
- Is local storage clearly treated as cache/offline work area?
- Is app-internal sharing clearly separated from ERP-wide publication?
- Is ERP-wide publication clearly routed through shared BusinessOS capability?
- Is approval clearly separated from publication success?
- Is published ERP-wide state clearly non-revocable by ordinary user?
- Are protected fields clearly handled?
- Are conflict, validation, and execution failure clearly separated?
- Are UI badges and messages consistent with state models?
- Does the integrated document reflect all current files?

