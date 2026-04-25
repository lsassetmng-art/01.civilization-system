# ============================================================
# BASIC RPG CONSTITUTION
# ============================================================

status: draft
layer: constitution
system: applications
category: game-app
application: BasicRPG
owner: Boss
prepared_by: Zero

purpose:
Defines the foundational principles of BasicRPG.

product_principles:
- clear and readable RPG before advanced social complexity
- single-player core loop first
- deterministic chapter progression with explicit unlock rules
- offline tolerance by default
- additive growth, no silent power inflation
- multilingual support is first-class
- multicurrency support is first-class
- premium features must be explicit and revocable where policy permits
- critical account and purchase actions must be auditable

experience_rules:
- no mandatory guild or PvP gate in v1
- no paywall on main story chapter entry in v1
- no random loot-box requirement in v1 monetization
- revive, stamina, and convenience offers must not hard-block daily progression
- boss failure must produce explicit retry guidance

data_rules:
- all gameplay mutations must map to explicit domain events
- reward grants must be traceable
- purchase entitlement must be traceable
- battle result must be reproducible from logged inputs where applicable
- offline queued actions must reconcile explicitly

governance_rules:
- balancing changes must be versioned
- premium catalog changes must be versioned
- localization updates must be attributable
- CX22073-backed knowledge outputs must remain referential and traceable
