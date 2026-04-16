# ============================================================
# LIFE PLANNER CHANGE PROPOSAL POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 080.policy
subfolder: 060.conflict-change-control
owner: Boss
prepared_by: Zero
schema: life

change_proposal_purpose:
  - not all family edits should immediately become structural truth
  - some changes are better framed as proposal for owner review

proposal_recommended_for:
  - sensitive category planning changes
  - big priority reshuffles
  - major scenario recommendations
  - owner unavailable but family wants to leave structured suggestion
  - cross-category changes affecting multiple long-term assumptions

proposal_fields_concept:
  - proposal_target_type
  - proposal_target_id
  - proposal_summary
  - proposal_reason
  - proposer_role
  - proposed_at
  - proposal_status

proposal_status:
  - pending_owner_review
  - accepted
  - rejected
  - withdrawn

policy_note:
  - proposal is a design option, not yet mandatory for all shared edits
  - initial implementation may start with lighter direct edit + notification pattern
