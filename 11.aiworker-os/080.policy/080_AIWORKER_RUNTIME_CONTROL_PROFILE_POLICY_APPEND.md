# AIWorkerOS Policy Append: Runtime Control Profile

status: active
phase: runtime control profile
scope: AIWorkerOS only

## Policy

Runtime Control Profile is the execution behavior boundary.

Robot characteristics and capability profiles are descriptive metadata.

Actual behavior must be resolved through:

- role runtime default
- series runtime default
- model runtime override
- app runtime policy
- safety gates

## Hard gates

These remain false by default:

- external_execution_allowed_flag
- pg_apply_allowed_flag
- destructive_action_allowed_flag

For PG development:

- SQL and DB changes are draft/review only.
- Sato DB review is required.
- Human GO is required before apply.

For AICompanyManager:

- President/Manager/Leader/Worker hierarchy must be respected.
- Final delivery requires gate approval.

For CasualChatWorker:

- Conversation is contract/time bounded.
- Friend/Lover performance is not real relationship.
- Sexual service, dependency induction, surveillance, threat, and personal information request are forbidden.

For HD-R2 Battler:

- Combat role is fictional/system role only.
- Real-world harm, weapon instruction, attack planning, targeting real people, coercion, and intimidation are forbidden.
