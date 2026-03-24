# ============================================================
# STREAMING RIGHTS PUBLISH POLICY
# ============================================================

status: canonical
layer: 080.policy
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for rights, reuse, and publish lifecycle.

policy_rules:
- authority, asset, platform, and publish basis must remain explicit
- duplicate effective publish must be prevented
- suspended, revoked, expired, failed, reversed, or invalidated states must remain explicit
- streaming rights-publish truth must remain canonical

evaluation_order:
1 target validity
2 authority validity
3 asset validity
4 platform validity
5 idempotency basis validity
6 execution eligibility
