# 0600001_PERSONA_OS_INTEGRATION_OVERVIEW

status: canonical-draft-deepened
system: PersonaOS
layer: integration
domain: integration
canonical: candidate
path: 060.integration/0600001_PERSONA_OS_INTEGRATION_OVERVIEW.md
promoted_at: 20260417_153929

purpose:
Defines the integration boundary for the integration area of PersonaOS.

integration_scope:
- inbound or outbound contract role
- correlation or idempotency handling
- downstream or callback normalization
- retry and dead-letter handling where applicable

mandatory_integration_controls:
- transport must not become authority
- no silent downstream side effect
- no retry without stop condition
- callback evidence must remain durable where applicable

review_targets:
- add exact message shapes
- add exact retry metadata
- add exact callback/result mapping
