# PERSONA ACCEPTANCE OPERATIONS

status: implementation-ready-followup

minimum_acceptance_tracks:
- valid inbound apply executes exactly once
- duplicate inbound apply remains noop
- invalid inbound apply returns fixed reject contract
- publish blocked when preconditions fail
- unreleased runtime input is rejected
- package integrity failure is rejected
- downstream failure reaches retry then dead-letter when unresolved
