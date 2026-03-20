# ============================================================
# RECOMMENDATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Recommendation is a formal school-issued endorsement for a student.

usage:
- internship eligibility
- school-supported company access
- special selection routing if defined

rules:
- recommendation must be explicitly granted by a school
- recommendation must identify target player and target purpose
- recommendation must be traceable and revocable only by explicit event
- recommendation is not implied by grades alone unless system rule says so

event_flow:
- recommendation_requested
- recommendation_evaluated
- recommendation_granted
- recommendation_used
- recommendation_expired_or_revoked

constitution_alignment:
- no inferred recommendation
- explicit event history required

final_rule:
Recommendations must be explicit institutional endorsements,
never hidden assumptions.
