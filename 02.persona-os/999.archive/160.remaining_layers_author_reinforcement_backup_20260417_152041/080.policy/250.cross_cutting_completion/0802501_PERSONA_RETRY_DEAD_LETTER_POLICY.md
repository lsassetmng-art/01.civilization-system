# PERSONA RETRY DEAD LETTER POLICY

status: implementation-ready-followup

policy_rules:
- only retry-safe side effects may retry
- max attempt threshold is mandatory
- dead-letter record is mandatory after terminal retry failure
- correlation trace must survive retry chain
