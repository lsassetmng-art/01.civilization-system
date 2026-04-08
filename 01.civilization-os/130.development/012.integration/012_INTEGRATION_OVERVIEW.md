# ============================================================
# 012 INTEGRATION OVERVIEW
# ============================================================

status: canonical
layer: development
domain: integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the development overview of the integration domain.

summary:
The integration development layer defines how engineers
should build, test, review, extend, and refactor
contract-based boundary logic without collapsing
proposal-only, bounded sync, canonical write,
replay, and audit paths together.

development_intent:
Integration bugs often come from lane mixing:
proposal payloads touching write paths,
public exports reading restricted payloads,
or replay paths reusing live handlers.
Development guidance exists to prevent those classes of failure.

scope:
- contract routing guidance
- lane-isolation guidance
- projection guidance
- history/replay guidance
- test strategy
- anti-pattern control
- review checklist

required_behavior:
- Development must preserve contract-class routing.
- Development must preserve physical and logical proposal isolation.
- Development must preserve replay/history separation from live paths.
- Development must add tests for denial, masking, trace emission, and lane separation.
