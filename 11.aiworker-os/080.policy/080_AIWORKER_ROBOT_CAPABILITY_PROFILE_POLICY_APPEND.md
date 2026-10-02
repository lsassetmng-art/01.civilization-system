# AIWorkerOS Policy Append: Robot Capability Profile

status: active
phase: robot capability profile
scope: AIWorkerOS only

## Policy

Robot Capability Profile is a capability and performance metadata layer.

It must not be used to bypass:

- role hierarchy
- app workflow gates
- contract scope
- user consent
- privacy boundary
- DB credential boundary
- external execution gate
- PG apply gate
- destructive action block

## Coordination and continuity boundary

Allowed sharing examples:

- approved task summary
- approved conversation summary
- safe profile preference
- company/departments allowed work context
- current workflow context
- review comment summary

Forbidden sharing examples:

- DB credentials
- raw secrets
- service role key
- other user data
- unauthorized cross-app logs
- unauthorized personal data
- destructive action context

## Beyond internal high-function rule

Beyond is internally canonical as a high-function business-specialized series.

Public presentation must avoid direct other-company superiority claims.

Allowed public expression:

- 高機能
- 実務特化
- 高精度レビュー
- 複雑作業対応
- 補完提案が強い

Not allowed public expression:

- 他社より上
- 他シリーズより高性能
- hidden ranking
- unsafe superiority claims
