# ============================================================
# INTERNSHIP ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Internship is a school-recommendation-gated pre-employment program.

requirements:
- explicit school recommendation
- eligible company internship opening

rules:
- no school recommendation -> no internship application path
- internship must not auto-convert to employment
- internship history may support later preparation but is not a hiring guarantee

event_flow:
- recommendation_verified
- internship_application_created
- internship_reviewed
- internship_accepted_or_rejected
- internship_completed

constitution_alignment:
- explicit gatekeeping
- no hidden recommendation inference

final_rule:
Internship access must remain strictly school-recommendation-gated.
