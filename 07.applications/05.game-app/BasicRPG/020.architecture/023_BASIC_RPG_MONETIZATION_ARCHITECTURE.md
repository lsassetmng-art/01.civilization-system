# ============================================================
# BASIC RPG MONETIZATION ARCHITECTURE
# ============================================================

status: draft
layer: architecture
system: applications
category: game-app
application: BasicRPG
owner: Boss
prepared_by: Zero

monetization_shape:
- free entry
- starter pack (one-time)
- adventurer pass (monthly)
- cosmetic skins
- convenience bundles
- optional ad-reward layer only if platform/channel requires it

anti_abuse_rules:
- no pay-only main story chapter unlock
- no mandatory random draw monetization in v1
- revive offers must not create infinite exploit loops
- premium entitlement must be time-bound or perpetual explicitly
- price presentation must separate local fiat amount from internal gems

multicurrency_rules:
- store displays localized fiat currency
- server stores original price, tax mode, and channel context
- refunds and revocations update entitlement state explicitly
