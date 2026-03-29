# ============================================================
# PERSONA BUILDER_PUBLISH_FLOW
# ============================================================

status: canonical
scope: persona.builder.publish.flow
system: persona-os
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical publish-preparation flow
for Persona Builder.

This flow governs creation of release-facing candidates
after approval.


# ============================================================
# FLOW
# ============================================================

1. publish preparation requested
2. approval state resolved
3. approval freshness checked
4. release-facing prerequisites checked
5. publish candidate scope selected:
   - snapshot
   - package
   - distribution
   - marketplace
   - visual_release
   - voice_release
6. publish candidate created
7. dependency summary attached
8. public surface summary attached
9. candidate marked ready_for_handoff or blocked
10. audit records written

Publish flow must fail closed if:

- approval is missing
- approval is expired
- validation is missing where required
- public surface is incomplete
- dependency state is unresolved
- audit persistence fails


# ============================================================
# OUTPUT
# ============================================================

Publish flow outputs:

- publish candidate reference
- dependency summary
- public surface summary
- handoff readiness state
- audit reference
