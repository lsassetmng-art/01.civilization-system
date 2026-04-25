# PERSONA RUNBOOK OPERATIONS

status: implementation-ready-followup

required_runbooks:
- inbound apply failure
- retry backlog growth
- dead-letter investigation
- runtime session instability
- package integrity failure
- external release failure
- callback authenticity failure

runbook_rule:
Every runbook execution records operator, start time, end time, and outcome.
