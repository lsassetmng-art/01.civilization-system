# ============================================================
# CREATOR PLATFORM POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for creator-platform lifecycle.

policy_rules:
- workspace, seller, title, release, validation, moderation, and publish basis must remain explicit
- publish without approved validation and moderation is prohibited
- executed rollout without approved publish decision is prohibited
- rejected, failed, suspended, or archived states must remain explicit
- creator-platform truth must remain canonical

evaluation_order:
1 workspace validity
2 seller validity
3 game title validity
4 release validity
5 validation validity
6 moderation validity
7 publish decision validity
8 rollout approval validity
9 execution eligibility
