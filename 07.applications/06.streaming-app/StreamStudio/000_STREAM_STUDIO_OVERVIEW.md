# ============================================================
# STREAM STUDIO OVERVIEW
# ============================================================

status: upgraded-draft
layer: overview
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Provides the top-level overview for StreamStudio.

summary:
StreamStudio is the creator production, publishing,
commerce, and membership operations application for StreamingOS.

It manages:
- upload
- metadata
- thumbnail
- subtitle
- review
- approval
- collaboration
- publication
- external push extension
- revenue split setup
- Civilization marketplace listing
- paid video access setting
- membership program management

truth_model:
- StreamingOS is the canonical source of truth for creator asset and publication.
- Civilization Marketplace is the canonical commerce listing destination.
- Billing and entitlement execution are downstream commerce truths.
- StreamStudio is the creator-facing operation surface.

monetization_modes:
- free publication
- paid video listing
- membership-only access
- member-early-access then public release
- bundle / rental reserved for future extension

platform_model:
- iPhone
- Android
- PC
- Tablet

core_position:
- creator operations cockpit
- StreamingOS-first publishing app
- creator commerce operations app
- membership management app
- revenue split preparation and governance app

structure:
- 010.constitution
- 020.architecture
- 030.model
- 040.screen-and-stateflow
- 050.api
- 060.integration
- 070.operations
- 080.policy
- 120.implementation
- 900.meta
