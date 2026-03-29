# ============================================================
# PUBLIC OFFICE REASON CODE MODEL
# ============================================================

status: canonical
layer: model
scope: public-office-actor-compatibility
component: public-office-reason-code

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REASON CODES
# ============================================================

reason_codes:
- POR-001 compatible
- POR-002 office_specific_rule
- POR-003 incompatible_non_human
- POR-004 blocked_by_human_required_profile
- POR-005 blocked_by_bloodline_requirement
- POR-006 blocked_by_nation_override
- POR-007 blocked_by_loyalty_requirement
- POR-008 blocked_by_merit_requirement
- POR-009 blocked_by_clearance_requirement
- POR-010 support_execution_only
- POR-011 compatible_with_appointment
- POR-012 compatible_with_election
- POR-013 compatible_with_command_promotion


# ============================================================
# 2. FINAL RULE
# ============================================================

Reason codes
must support logs,
UI explanation,
and office compatibility debugging.
