# AIWorkerOS Policy Append: Runtime Execution Request

status: active
phase: runtime execution request
scope: AIWorkerOS only

## Policy

Runtime Execution Request is an internal intake layer.

It is allowed to:

- read Runtime Control Profile
- snapshot runtime behavior
- create internal request records
- create review gate records
- create handoff packets

It is not allowed to:

- execute external APIs
- apply PG
- perform destructive action
- skip human GO when required
- bypass review gates

## PG development

PG development requests must keep:

- review_required_flag: true
- human_go_required_flag: true
- pg_apply_allowed_flag: false

## AICompanyManager

AICompanyManager requests must preserve hierarchy:

- President
- Manager
- Leader
- Worker
- review gate
- human GO where required
- handoff packet
