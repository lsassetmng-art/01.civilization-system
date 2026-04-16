# ============================================================
# ESTIMATE IMPLEMENTATION / DEVELOPMENT BOUNDARY NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This note clarifies the boundary between:

- 120.implementation
- 130.development

The purpose is to prevent confusion between
implementation-detail design
and development-process control.

# ============================================================
# 2. 120.IMPLEMENTATION ROLE
# ============================================================

120.implementation is the implementation design layer.

It defines:

- how something should be implemented
- technical implementation guidance
- implementation-side rules
- implementation contracts and mappings
- implementation handling of runtime/policy/model details

Representative contents:

- API implementation guide
- offline implementation guide
- premium feature implementation guide
- payload field map implementation guide
- UI state implementation guide
- validation / error implementation guide

Core question answered by 120:

"How should this be implemented?"

# ============================================================
# 3. 130.DEVELOPMENT ROLE
# ============================================================

130.development is the development progression layer.

It defines:

- in what order implementation should proceed
- which phase depends on which foundation
- what must not be broken during development
- what readiness is required before moving forward
- release hardening sequence

Representative contents:

- phase plan
- development guardrails
- implementation entry order
- integration readiness
- release readiness

Core question answered by 130:

"In what order and under what discipline should this be built?"

# ============================================================
# 4. SIMPLE BOUNDARY RULE
# ============================================================

Use 120 when the subject is:

- implementation method
- implementation detail
- implementation-side rule
- implementation mapping
- technical handling detail

Use 130 when the subject is:

- phase order
- development sequencing
- rollout dependency
- build progression
- readiness checkpoint
- release gating

# ============================================================
# 5. EXAMPLES
# ============================================================

## belongs to 120
- how deeplink parameters are validated
- how pending operation queue is implemented
- how premium entitlement is checked at runtime
- how inventory reference response is mapped
- how UI state codes are wired

## belongs to 130
- implement standalone/deeplink entry before premium features
- finish offline draft before share/publication rollout
- verify shared session before enabling deeplink production flow
- release premium only after downgrade-safe behavior is confirmed
- run hardening after integration phases stabilize

# ============================================================
# 6. PRACTICAL RULE FOR ESTIMATECREATOR
# ============================================================

For EstimateCreator:

- 120 should hold execution detail
- 130 should hold implementation order and control

Therefore 130 is not redundant.

EstimateCreator has enough complexity in:

- dual entry
- shared session reuse
- offline draft
- sync replay
- sharing
- ERP publication
- inventory reference
- premium entitlement

that development-order mistakes can break architecture.

# ============================================================
# 7. CONCLUSION
# ============================================================

120.implementation and 130.development should both exist.

Their roles are different:

- 120 = implementation design
- 130 = development control

This separation is appropriate for EstimateCreator.

