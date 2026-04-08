# ============================================================
# PERSONA OS SEMANTIC REVIEW PHASE2 ROADMAP
# ============================================================

status: canonical
layer: meta
domain: semantic-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the recommended priority order
for PersonaOS semantic review phase 2.

# ============================================================
# 1. PRIORITY ORDER
# ============================================================

Priority 1:
- 050.growth
- 060.builder
- 080.runtime-hosting

Priority 2:
- 090.snapshot
- 150.security
- 170.operations-support

Priority 3:
- 100.package
- 110.distribution
- 120.external-rights
- 130.access-license-transfer

Priority 4:
- 160.governance

# ============================================================
# 2. WHY THIS ORDER
# ============================================================

Priority 1 domains are recommended first because:

050.growth:
Touches long-term persona change
and directly affects memory, state, capability, and integration semantics.

060.builder:
Touches draft-authoring authority boundaries
and is critical for separating authoring from truth ownership.

080.runtime-hosting:
Touches host/runtime consumption boundaries
and is critical for keeping runtime execution separate from canonical truth.

Priority 2 domains are recommended next because:

090.snapshot:
Depends on state and memory semantics already reviewed.

150.security:
Interacts with identity, access, external release, and hosting boundaries.

170.operations-support:
Interacts with integration/outbox/audit behavior
and should be reviewed after integration is stabilized.

Priority 3 domains are commerce / release / rights heavy
and are easier to review after growth, builder, hosting, and security are clearer.

Priority 4 governance is important,
but benefits from clearer phase 2 upstream semantics first.

# ============================================================
# 3. REVIEW GOALS BY DOMAIN
# ============================================================

050.growth:
- separate growth truth from event triggers
- separate growth truth from integration requests
- clarify long-term change authority

060.builder:
- separate draft state from truth state
- clarify builder non-authority
- clarify apply/approve boundary

080.runtime-hosting:
- separate host session state from truth state
- separate visual runtime execution from visual truth
- clarify host-side consumption contracts

090.snapshot:
- clarify snapshot vs state vs memory
- clarify point-in-time truth rules

150.security:
- clarify security truth vs identity truth
- clarify guardrail / credential / access policy boundaries

170.operations-support:
- clarify audit vs outbox vs diagnostic records
- clarify operator support vs authority mutation

100.package:
- clarify package as distributable unit vs persona truth

110.distribution:
- clarify distribution record vs release authority

120.external-rights:
- clarify release/license/access/transfer boundary

130.access-license-transfer:
- clarify access grant vs license vs transfer record semantics

160.governance:
- clarify moderation/approval/eligibility boundaries

# ============================================================
# 4. RECOMMENDED NEXT START
# ============================================================

Recommended immediate next start:

050.growth

because it has the strongest cross-domain impact
on state, memory, capability, and integration.

# ============================================================
# 5. FINAL JUDGMENT
# ============================================================

Phase 2 should start from growth,
then builder,
then runtime-hosting.
