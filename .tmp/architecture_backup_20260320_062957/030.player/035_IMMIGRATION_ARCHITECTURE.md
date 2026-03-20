# ============================================================
# IMMIGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Immigration represents movement of persons into or across nations.

purpose:
- connect life opportunity, economy, law, and security
- alter labor supply, population composition, and social tension

drivers:
- economic opportunity
- safety
- law strictness
- war impact
- social stability
- loyalty failure in origin nation

rules:
- migration must follow explicit eligibility and movement events
- no silent relocation of player or citizens
- immigration effects must be separated from citizenship acquisition

event_flow:
- migration_opportunity_detected
- migration_application_created
- migration_validated
- migration_executed
- residency_state_updated
- citizenship_review_event_optional

constitution_alignment:
- explicit transition only
- no hidden population rewrite
- permission and law validation required

final_rule:
Immigration must be modeled as lawful, explicit movement,
never as silent reassignment.
