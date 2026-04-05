# ============================================================
# NAME CARD MANAGER OVERVIEW
# ============================================================

status: draft
layer: overview
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Provides the top-level overview for NameCardManager.

summary:
NameCardManager is a BusinessOS-connected application for
managing business cards, person notes, responsibility scope,
business history, and visible relationships.

truth_model:
- BusinessOS is the source of truth.
- Local storage is a cache and offline work area.
- Offline operations are queued locally.
- Queued operations are applied to BusinessOS when online resumes.

sharing_model:
- app-internal sharing is explicit and revocable
- ERP-wide sharing is explicit and approval-governed
- ERP-wide sharing cannot be revoked by ordinary user action

screen_model:
- login
- name card list
- name card detail
- settings
- share target setting
- ERP setting

structure:
010.constitution
020.architecture
030.model
040.runtime
050.flow
060.integration
070.operations
080.policy
090.interface
100.security
110.infrastructure
120.implementation
130.development
900.meta
