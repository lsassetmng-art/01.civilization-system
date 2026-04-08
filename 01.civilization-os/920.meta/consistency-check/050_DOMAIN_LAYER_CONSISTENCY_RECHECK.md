# ============================================================
# DOMAIN LAYER CONSISTENCY RECHECK
# ============================================================

status: review
prepared_by: Zero

# ============================================================
# DOMAIN: 002.world
# ============================================================

## 030.model
- existing_subdomain_count: 20
- missing_subdomains: none
- extra_subdomains: none

## 040.runtime
- existing_subdomain_count: 20
- missing_subdomains: none
- extra_subdomains: none

## 050.flow
- existing_subdomain_count: 21
- missing_subdomains: none
- extra_subdomains:
  - 007.world

## 060.integration
- existing_subdomain_count: 20
- missing_subdomains: none
- extra_subdomains: none

## 070.operations
- existing_subdomain_count: 22
- missing_subdomains: none
- extra_subdomains:
  - 002.season
  - 090.world-and-builder-ops

## 080.policy
- existing_subdomain_count: 21
- missing_subdomains: none
- extra_subdomains:
  - 130.world-policy

## 100.security
- existing_subdomain_count: 20
- missing_subdomains: none
- extra_subdomains: none

## 110.infrastructure
- existing_subdomain_count: 20
- missing_subdomains: none
- extra_subdomains: none

## 120.implementation
- existing_subdomain_count: 24
- missing_subdomains: none
- extra_subdomains:
  - 381.world-ui
  - 382.facility-ui
  - 391.risk-and-mortality
  - 396.world-progression

## 130.development
- existing_subdomain_count: 20
- missing_subdomains: none
- extra_subdomains: none


# ============================================================
# DOMAIN: 004.mode
# ============================================================

## 030.model
- existing_subdomain_count: 11
- missing_subdomains: none
- extra_subdomains: none

## 040.runtime
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.mode-core
  - 020.mode-rule
  - 030.mode-transition
  - 040.mode-session-binding
  - 050.mode-participant-binding
  - 060.mode-reward-binding
- extra_subdomains: none

## 050.flow
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.mode-core
  - 020.mode-rule
  - 030.mode-transition
  - 040.mode-session-binding
  - 050.mode-participant-binding
  - 060.mode-reward-binding
- extra_subdomains: none

## 060.integration
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.mode-core
  - 020.mode-rule
  - 030.mode-transition
  - 040.mode-session-binding
  - 050.mode-participant-binding
  - 060.mode-reward-binding
- extra_subdomains: none

## 070.operations
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.mode-core
  - 020.mode-rule
  - 030.mode-transition
  - 040.mode-session-binding
  - 050.mode-participant-binding
  - 060.mode-reward-binding
- extra_subdomains: none

## 080.policy
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.mode-core
  - 020.mode-rule
  - 030.mode-transition
  - 040.mode-session-binding
  - 050.mode-participant-binding
  - 060.mode-reward-binding
- extra_subdomains: none

## 100.security
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.mode-core
  - 020.mode-rule
  - 030.mode-transition
  - 040.mode-session-binding
  - 050.mode-participant-binding
  - 060.mode-reward-binding
- extra_subdomains: none

## 110.infrastructure
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.mode-core
  - 020.mode-rule
  - 030.mode-transition
  - 040.mode-session-binding
  - 050.mode-participant-binding
  - 060.mode-reward-binding
- extra_subdomains: none

## 120.implementation
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.mode-core
  - 020.mode-rule
  - 030.mode-transition
  - 040.mode-session-binding
  - 050.mode-participant-binding
  - 060.mode-reward-binding
- extra_subdomains: none

## 130.development
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.mode-core
  - 020.mode-rule
  - 030.mode-transition
  - 040.mode-session-binding
  - 050.mode-participant-binding
  - 060.mode-reward-binding
- extra_subdomains: none


# ============================================================
# DOMAIN: 005.story
# ============================================================

## 030.model
- existing_subdomain_count: 13
- missing_subdomains: none
- extra_subdomains: none

## 040.runtime
- existing_subdomain_count: 6
- missing_subdomains:
  - 010.story-core
  - 020.story-arc
  - 030.story-event-binding
  - 040.story-branching
  - 050.story-scene
  - 060.story-progression
  - 070.story-resolution
- extra_subdomains: none

## 050.flow
- existing_subdomain_count: 6
- missing_subdomains:
  - 010.story-core
  - 020.story-arc
  - 030.story-event-binding
  - 040.story-branching
  - 050.story-scene
  - 060.story-progression
  - 070.story-resolution
- extra_subdomains: none

## 060.integration
- existing_subdomain_count: 6
- missing_subdomains:
  - 010.story-core
  - 020.story-arc
  - 030.story-event-binding
  - 040.story-branching
  - 050.story-scene
  - 060.story-progression
  - 070.story-resolution
- extra_subdomains: none

## 070.operations
- existing_subdomain_count: 7
- missing_subdomains:
  - 010.story-core
  - 020.story-arc
  - 030.story-event-binding
  - 040.story-branching
  - 050.story-scene
  - 060.story-progression
  - 070.story-resolution
- extra_subdomains:
  - 005.story-ops

## 080.policy
- existing_subdomain_count: 7
- missing_subdomains:
  - 010.story-core
  - 020.story-arc
  - 030.story-event-binding
  - 040.story-branching
  - 050.story-scene
  - 060.story-progression
  - 070.story-resolution
- extra_subdomains:
  - 100.rules

## 100.security
- existing_subdomain_count: 6
- missing_subdomains:
  - 010.story-core
  - 020.story-arc
  - 030.story-event-binding
  - 040.story-branching
  - 050.story-scene
  - 060.story-progression
  - 070.story-resolution
- extra_subdomains: none

## 110.infrastructure
- existing_subdomain_count: 6
- missing_subdomains:
  - 010.story-core
  - 020.story-arc
  - 030.story-event-binding
  - 040.story-branching
  - 050.story-scene
  - 060.story-progression
  - 070.story-resolution
- extra_subdomains: none

## 120.implementation
- existing_subdomain_count: 6
- missing_subdomains:
  - 010.story-core
  - 020.story-arc
  - 030.story-event-binding
  - 040.story-branching
  - 050.story-scene
  - 060.story-progression
  - 070.story-resolution
- extra_subdomains: none

## 130.development
- existing_subdomain_count: 6
- missing_subdomains:
  - 010.story-core
  - 020.story-arc
  - 030.story-event-binding
  - 040.story-branching
  - 050.story-scene
  - 060.story-progression
  - 070.story-resolution
- extra_subdomains: none


# ============================================================
# DOMAIN: 006.player
# ============================================================

## 030.model
- existing_subdomain_count: 14
- missing_subdomains: none
- extra_subdomains: none

## 040.runtime
- existing_subdomain_count: 6
- missing_subdomains:
  - 010.player-core
  - 020.player-identity
  - 030.player-entitlement
  - 040.player-wallet-binding
  - 050.player-session
  - 060.player-presence
  - 070.player-progression
  - 080.player-sanction
- extra_subdomains: none

## 050.flow
- existing_subdomain_count: 14
- missing_subdomains: none
- extra_subdomains: none

## 060.integration
- existing_subdomain_count: 14
- missing_subdomains: none
- extra_subdomains: none

## 070.operations
- existing_subdomain_count: 14
- missing_subdomains: none
- extra_subdomains: none

## 080.policy
- existing_subdomain_count: 14
- missing_subdomains: none
- extra_subdomains: none

## 100.security
- existing_subdomain_count: 14
- missing_subdomains: none
- extra_subdomains: none

## 110.infrastructure
- existing_subdomain_count: 14
- missing_subdomains: none
- extra_subdomains: none

## 120.implementation
- existing_subdomain_count: 14
- missing_subdomains: none
- extra_subdomains: none

## 130.development
- existing_subdomain_count: 14
- missing_subdomains: none
- extra_subdomains: none


# ============================================================
# DOMAIN: 012.integration
# ============================================================

## 030.model
- existing_subdomain_count: 10
- missing_subdomains: none
- extra_subdomains: none

## 040.runtime
- existing_subdomain_count: 6
- missing_subdomains:
  - 010.integration-core
  - 020.event-ingress
  - 030.event-egress
  - 040.sync-binding
  - 050.mapping-rule
  - 060.reconciliation
- extra_subdomains:
  - 008.integration
  - 009.external-integration

## 050.flow
- existing_subdomain_count: 4
- missing_subdomains:
  - 010.integration-core
  - 020.event-ingress
  - 030.event-egress
  - 040.sync-binding
  - 050.mapping-rule
  - 060.reconciliation
- extra_subdomains: none

## 060.integration
- existing_subdomain_count: 4
- missing_subdomains:
  - 010.integration-core
  - 020.event-ingress
  - 030.event-egress
  - 040.sync-binding
  - 050.mapping-rule
  - 060.reconciliation
- extra_subdomains: none

## 070.operations
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.integration-core
  - 020.event-ingress
  - 030.event-egress
  - 040.sync-binding
  - 050.mapping-rule
  - 060.reconciliation
- extra_subdomains:
  - 008.integration

## 080.policy
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.integration-core
  - 020.event-ingress
  - 030.event-egress
  - 040.sync-binding
  - 050.mapping-rule
  - 060.reconciliation
- extra_subdomains:
  - 015.integration

## 100.security
- existing_subdomain_count: 4
- missing_subdomains:
  - 010.integration-core
  - 020.event-ingress
  - 030.event-egress
  - 040.sync-binding
  - 050.mapping-rule
  - 060.reconciliation
- extra_subdomains: none

## 110.infrastructure
- existing_subdomain_count: 4
- missing_subdomains:
  - 010.integration-core
  - 020.event-ingress
  - 030.event-egress
  - 040.sync-binding
  - 050.mapping-rule
  - 060.reconciliation
- extra_subdomains: none

## 120.implementation
- existing_subdomain_count: 4
- missing_subdomains:
  - 010.integration-core
  - 020.event-ingress
  - 030.event-egress
  - 040.sync-binding
  - 050.mapping-rule
  - 060.reconciliation
- extra_subdomains: none

## 130.development
- existing_subdomain_count: 4
- missing_subdomains:
  - 010.integration-core
  - 020.event-ingress
  - 030.event-egress
  - 040.sync-binding
  - 050.mapping-rule
  - 060.reconciliation
- extra_subdomains: none


# ============================================================
# DOMAIN: 014.security
# ============================================================

## 030.model
- existing_subdomain_count: 11
- missing_subdomains: none
- extra_subdomains: none

## 040.runtime
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.security-core
  - 020.access-control
  - 030.authentication
  - 040.authorization
  - 050.audit-security
  - 060.threat-response
- extra_subdomains: none

## 050.flow
- existing_subdomain_count: 6
- missing_subdomains:
  - 010.security-core
  - 020.access-control
  - 030.authentication
  - 040.authorization
  - 050.audit-security
  - 060.threat-response
- extra_subdomains:
  - 012.security

## 060.integration
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.security-core
  - 020.access-control
  - 030.authentication
  - 040.authorization
  - 050.audit-security
  - 060.threat-response
- extra_subdomains: none

## 070.operations
- existing_subdomain_count: 8
- missing_subdomains:
  - 010.security-core
  - 020.access-control
  - 030.authentication
  - 040.authorization
  - 050.audit-security
  - 060.threat-response
- extra_subdomains:
  - 011.security
  - 015.moderation
  - 020.security-ops

## 080.policy
- existing_subdomain_count: 7
- missing_subdomains:
  - 010.security-core
  - 020.access-control
  - 030.authentication
  - 040.authorization
  - 050.audit-security
  - 060.threat-response
- extra_subdomains:
  - 009.security
  - 110.access

## 100.security
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.security-core
  - 020.access-control
  - 030.authentication
  - 040.authorization
  - 050.audit-security
  - 060.threat-response
- extra_subdomains: none

## 110.infrastructure
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.security-core
  - 020.access-control
  - 030.authentication
  - 040.authorization
  - 050.audit-security
  - 060.threat-response
- extra_subdomains: none

## 120.implementation
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.security-core
  - 020.access-control
  - 030.authentication
  - 040.authorization
  - 050.audit-security
  - 060.threat-response
- extra_subdomains: none

## 130.development
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.security-core
  - 020.access-control
  - 030.authentication
  - 040.authorization
  - 050.audit-security
  - 060.threat-response
- extra_subdomains: none


# ============================================================
# DOMAIN: 016.war
# ============================================================

## 030.model
- existing_subdomain_count: 11
- missing_subdomains: none
- extra_subdomains: none

## 040.runtime
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.war-core
  - 020.war-front
  - 030.unit-deployment
  - 040.war-operation
  - 050.war-logistics
  - 060.ceasefire-resolution
- extra_subdomains: none

## 050.flow
- existing_subdomain_count: 6
- missing_subdomains:
  - 010.war-core
  - 020.war-front
  - 030.unit-deployment
  - 040.war-operation
  - 050.war-logistics
  - 060.ceasefire-resolution
- extra_subdomains:
  - 011.war

## 060.integration
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.war-core
  - 020.war-front
  - 030.unit-deployment
  - 040.war-operation
  - 050.war-logistics
  - 060.ceasefire-resolution
- extra_subdomains: none

## 070.operations
- existing_subdomain_count: 6
- missing_subdomains:
  - 010.war-core
  - 020.war-front
  - 030.unit-deployment
  - 040.war-operation
  - 050.war-logistics
  - 060.ceasefire-resolution
- extra_subdomains:
  - 016.war-ops

## 080.policy
- existing_subdomain_count: 8
- missing_subdomains:
  - 010.war-core
  - 020.war-front
  - 030.unit-deployment
  - 040.war-operation
  - 050.war-logistics
  - 060.ceasefire-resolution
- extra_subdomains:
  - 006.reward
  - 011.war
  - 100.rules

## 100.security
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.war-core
  - 020.war-front
  - 030.unit-deployment
  - 040.war-operation
  - 050.war-logistics
  - 060.ceasefire-resolution
- extra_subdomains: none

## 110.infrastructure
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.war-core
  - 020.war-front
  - 030.unit-deployment
  - 040.war-operation
  - 050.war-logistics
  - 060.ceasefire-resolution
- extra_subdomains: none

## 120.implementation
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.war-core
  - 020.war-front
  - 030.unit-deployment
  - 040.war-operation
  - 050.war-logistics
  - 060.ceasefire-resolution
- extra_subdomains: none

## 130.development
- existing_subdomain_count: 5
- missing_subdomains:
  - 010.war-core
  - 020.war-front
  - 030.unit-deployment
  - 040.war-operation
  - 050.war-logistics
  - 060.ceasefire-resolution
- extra_subdomains: none


# ============================================================
# DOMAIN: 018.meta
# ============================================================

## 030.model
- existing_subdomain_count: 38
- missing_subdomains: none
- extra_subdomains: none

## 040.runtime
- existing_subdomain_count: 40
- missing_subdomains:
  - 040.registry
  - 050.domain
- extra_subdomains:
  - 007.audit
  - 011.observability
  - 040.detail
  - 999.meta

## 050.flow
- existing_subdomain_count: 39
- missing_subdomains:
  - 040.registry
  - 050.domain
- extra_subdomains:
  - 013.meta
  - 180.misc
  - 999.meta

## 060.integration
- existing_subdomain_count: 36
- missing_subdomains:
  - 040.registry
  - 050.domain
- extra_subdomains: none

## 070.operations
- existing_subdomain_count: 44
- missing_subdomains:
  - 040.registry
  - 050.domain
- extra_subdomains:
  - 009.monitoring
  - 012.data
  - 013.release
  - 030.audit
  - 120.meta
  - 170.domain-ops
  - 180.misc
  - 999.meta

## 080.policy
- existing_subdomain_count: 39
- missing_subdomains:
  - 040.registry
  - 050.domain
- extra_subdomains:
  - 013.meta
  - 200.meta
  - 999.meta

## 100.security
- existing_subdomain_count: 36
- missing_subdomains:
  - 040.registry
  - 050.domain
- extra_subdomains: none

## 110.infrastructure
- existing_subdomain_count: 36
- missing_subdomains:
  - 040.registry
  - 050.domain
- extra_subdomains: none

## 120.implementation
- existing_subdomain_count: 38
- missing_subdomains:
  - 040.registry
  - 050.domain
- extra_subdomains:
  - 110.meta
  - 180.misc

## 130.development
- existing_subdomain_count: 37
- missing_subdomains:
  - 040.registry
  - 050.domain
- extra_subdomains:
  - 150.dev-support


# ============================================================
# DOMAIN: 019.interface
# ============================================================

## 030.model
- existing_subdomain_count: 46
- missing_subdomains: none
- extra_subdomains: none

## 040.runtime
- existing_subdomain_count: 47
- missing_subdomains: none
- extra_subdomains:
  - 006.notification

## 050.flow
- existing_subdomain_count: 46
- missing_subdomains: none
- extra_subdomains: none

## 060.integration
- existing_subdomain_count: 46
- missing_subdomains: none
- extra_subdomains: none

## 070.operations
- existing_subdomain_count: 48
- missing_subdomains: none
- extra_subdomains:
  - 007.content
  - 080.interface

## 080.policy
- existing_subdomain_count: 47
- missing_subdomains: none
- extra_subdomains:
  - 150.interface

## 100.security
- existing_subdomain_count: 46
- missing_subdomains: none
- extra_subdomains: none

## 110.infrastructure
- existing_subdomain_count: 46
- missing_subdomains: none
- extra_subdomains: none

## 120.implementation
- existing_subdomain_count: 46
- missing_subdomains: none
- extra_subdomains: none

## 130.development
- existing_subdomain_count: 46
- missing_subdomains: none
- extra_subdomains: none


# ============================================================
# DOMAIN: 040.detail
# ============================================================

## 030.model
- existing_subdomain_count: 7
- missing_subdomains: none
- extra_subdomains: none

## 040.runtime
- existing_subdomain_count: 1
- missing_subdomains:
  - 010.detail-core
  - 020.attribute-detail
  - 030.constraint-detail
  - 040.reference-detail
  - 050.measurement-detail
  - 060.composition-detail
- extra_subdomains: none

## 050.flow
- existing_subdomain_count: 1
- missing_subdomains:
  - 010.detail-core
  - 020.attribute-detail
  - 030.constraint-detail
  - 040.reference-detail
  - 050.measurement-detail
  - 060.composition-detail
- extra_subdomains: none

## 060.integration
- existing_subdomain_count: 1
- missing_subdomains:
  - 010.detail-core
  - 020.attribute-detail
  - 030.constraint-detail
  - 040.reference-detail
  - 050.measurement-detail
  - 060.composition-detail
- extra_subdomains: none

## 070.operations
- existing_subdomain_count: 1
- missing_subdomains:
  - 010.detail-core
  - 020.attribute-detail
  - 030.constraint-detail
  - 040.reference-detail
  - 050.measurement-detail
  - 060.composition-detail
- extra_subdomains: none

## 080.policy
- existing_subdomain_count: 1
- missing_subdomains:
  - 010.detail-core
  - 020.attribute-detail
  - 030.constraint-detail
  - 040.reference-detail
  - 050.measurement-detail
  - 060.composition-detail
- extra_subdomains: none

## 100.security
- existing_subdomain_count: 1
- missing_subdomains:
  - 010.detail-core
  - 020.attribute-detail
  - 030.constraint-detail
  - 040.reference-detail
  - 050.measurement-detail
  - 060.composition-detail
- extra_subdomains: none

## 110.infrastructure
- existing_subdomain_count: 1
- missing_subdomains:
  - 010.detail-core
  - 020.attribute-detail
  - 030.constraint-detail
  - 040.reference-detail
  - 050.measurement-detail
  - 060.composition-detail
- extra_subdomains: none

## 120.implementation
- existing_subdomain_count: 1
- missing_subdomains:
  - 010.detail-core
  - 020.attribute-detail
  - 030.constraint-detail
  - 040.reference-detail
  - 050.measurement-detail
  - 060.composition-detail
- extra_subdomains: none

## 130.development
- existing_subdomain_count: 1
- missing_subdomains:
  - 010.detail-core
  - 020.attribute-detail
  - 030.constraint-detail
  - 040.reference-detail
  - 050.measurement-detail
  - 060.composition-detail
- extra_subdomains: none

