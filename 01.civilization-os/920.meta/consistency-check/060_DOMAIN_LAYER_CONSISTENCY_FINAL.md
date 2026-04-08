# ============================================================
# DOMAIN LAYER CONSISTENCY FINAL
# ============================================================

status: review
prepared_by: Zero

# ============================================================
# DOMAIN: 002.world
# ============================================================

## 030.model
- existing_subdomain_count: 20
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 040.runtime
- existing_subdomain_count: 20
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 050.flow
- existing_subdomain_count: 21
- missing_subdomain_count: 0
- extra_subdomain_count: 1
- result: NG
- extra_subdomains:
  - 007.world

## 060.integration
- existing_subdomain_count: 20
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 070.operations
- existing_subdomain_count: 22
- missing_subdomain_count: 0
- extra_subdomain_count: 2
- result: NG
- extra_subdomains:
  - 002.season
  - 090.world-and-builder-ops

## 080.policy
- existing_subdomain_count: 21
- missing_subdomain_count: 0
- extra_subdomain_count: 1
- result: NG
- extra_subdomains:
  - 130.world-policy

## 100.security
- existing_subdomain_count: 20
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 110.infrastructure
- existing_subdomain_count: 20
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 120.implementation
- existing_subdomain_count: 24
- missing_subdomain_count: 0
- extra_subdomain_count: 4
- result: NG
- extra_subdomains:
  - 381.world-ui
  - 382.facility-ui
  - 391.risk-and-mortality
  - 396.world-progression

## 130.development
- existing_subdomain_count: 20
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK


# ============================================================
# DOMAIN: 004.mode
# ============================================================

## 030.model
- existing_subdomain_count: 11
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 040.runtime
- existing_subdomain_count: 5
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.mode-core
  - 020.mode-rule
  - 030.mode-transition
  - 040.mode-session-binding
  - 050.mode-participant-binding
  - 060.mode-reward-binding

## 050.flow
- existing_subdomain_count: 5
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.mode-core
  - 020.mode-rule
  - 030.mode-transition
  - 040.mode-session-binding
  - 050.mode-participant-binding
  - 060.mode-reward-binding

## 060.integration
- existing_subdomain_count: 5
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.mode-core
  - 020.mode-rule
  - 030.mode-transition
  - 040.mode-session-binding
  - 050.mode-participant-binding
  - 060.mode-reward-binding

## 070.operations
- existing_subdomain_count: 5
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.mode-core
  - 020.mode-rule
  - 030.mode-transition
  - 040.mode-session-binding
  - 050.mode-participant-binding
  - 060.mode-reward-binding

## 080.policy
- existing_subdomain_count: 5
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.mode-core
  - 020.mode-rule
  - 030.mode-transition
  - 040.mode-session-binding
  - 050.mode-participant-binding
  - 060.mode-reward-binding

## 100.security
- existing_subdomain_count: 5
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.mode-core
  - 020.mode-rule
  - 030.mode-transition
  - 040.mode-session-binding
  - 050.mode-participant-binding
  - 060.mode-reward-binding

## 110.infrastructure
- existing_subdomain_count: 5
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.mode-core
  - 020.mode-rule
  - 030.mode-transition
  - 040.mode-session-binding
  - 050.mode-participant-binding
  - 060.mode-reward-binding

## 120.implementation
- existing_subdomain_count: 5
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.mode-core
  - 020.mode-rule
  - 030.mode-transition
  - 040.mode-session-binding
  - 050.mode-participant-binding
  - 060.mode-reward-binding

## 130.development
- existing_subdomain_count: 5
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.mode-core
  - 020.mode-rule
  - 030.mode-transition
  - 040.mode-session-binding
  - 050.mode-participant-binding
  - 060.mode-reward-binding


# ============================================================
# DOMAIN: 005.story
# ============================================================

## 030.model
- existing_subdomain_count: 13
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 040.runtime
- existing_subdomain_count: 6
- missing_subdomain_count: 7
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.story-core
  - 020.story-arc
  - 030.story-event-binding
  - 040.story-branching
  - 050.story-scene
  - 060.story-progression
  - 070.story-resolution

## 050.flow
- existing_subdomain_count: 6
- missing_subdomain_count: 7
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.story-core
  - 020.story-arc
  - 030.story-event-binding
  - 040.story-branching
  - 050.story-scene
  - 060.story-progression
  - 070.story-resolution

## 060.integration
- existing_subdomain_count: 6
- missing_subdomain_count: 7
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.story-core
  - 020.story-arc
  - 030.story-event-binding
  - 040.story-branching
  - 050.story-scene
  - 060.story-progression
  - 070.story-resolution

## 070.operations
- existing_subdomain_count: 7
- missing_subdomain_count: 7
- extra_subdomain_count: 1
- result: NG
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
- missing_subdomain_count: 7
- extra_subdomain_count: 1
- result: NG
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
- missing_subdomain_count: 7
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.story-core
  - 020.story-arc
  - 030.story-event-binding
  - 040.story-branching
  - 050.story-scene
  - 060.story-progression
  - 070.story-resolution

## 110.infrastructure
- existing_subdomain_count: 6
- missing_subdomain_count: 7
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.story-core
  - 020.story-arc
  - 030.story-event-binding
  - 040.story-branching
  - 050.story-scene
  - 060.story-progression
  - 070.story-resolution

## 120.implementation
- existing_subdomain_count: 6
- missing_subdomain_count: 7
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.story-core
  - 020.story-arc
  - 030.story-event-binding
  - 040.story-branching
  - 050.story-scene
  - 060.story-progression
  - 070.story-resolution

## 130.development
- existing_subdomain_count: 6
- missing_subdomain_count: 7
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.story-core
  - 020.story-arc
  - 030.story-event-binding
  - 040.story-branching
  - 050.story-scene
  - 060.story-progression
  - 070.story-resolution


# ============================================================
# DOMAIN: 006.player
# ============================================================

## 030.model
- existing_subdomain_count: 14
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 040.runtime
- existing_subdomain_count: 6
- missing_subdomain_count: 8
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.player-core
  - 020.player-identity
  - 030.player-entitlement
  - 040.player-wallet-binding
  - 050.player-session
  - 060.player-presence
  - 070.player-progression
  - 080.player-sanction

## 050.flow
- existing_subdomain_count: 14
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 060.integration
- existing_subdomain_count: 14
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 070.operations
- existing_subdomain_count: 14
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 080.policy
- existing_subdomain_count: 14
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 100.security
- existing_subdomain_count: 14
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 110.infrastructure
- existing_subdomain_count: 14
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 120.implementation
- existing_subdomain_count: 14
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 130.development
- existing_subdomain_count: 14
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK


# ============================================================
# DOMAIN: 012.integration
# ============================================================

## 030.model
- existing_subdomain_count: 10
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 040.runtime
- existing_subdomain_count: 6
- missing_subdomain_count: 6
- extra_subdomain_count: 2
- result: NG
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
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.integration-core
  - 020.event-ingress
  - 030.event-egress
  - 040.sync-binding
  - 050.mapping-rule
  - 060.reconciliation

## 060.integration
- existing_subdomain_count: 4
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.integration-core
  - 020.event-ingress
  - 030.event-egress
  - 040.sync-binding
  - 050.mapping-rule
  - 060.reconciliation

## 070.operations
- existing_subdomain_count: 5
- missing_subdomain_count: 6
- extra_subdomain_count: 1
- result: NG
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
- missing_subdomain_count: 6
- extra_subdomain_count: 1
- result: NG
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
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.integration-core
  - 020.event-ingress
  - 030.event-egress
  - 040.sync-binding
  - 050.mapping-rule
  - 060.reconciliation

## 110.infrastructure
- existing_subdomain_count: 4
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.integration-core
  - 020.event-ingress
  - 030.event-egress
  - 040.sync-binding
  - 050.mapping-rule
  - 060.reconciliation

## 120.implementation
- existing_subdomain_count: 4
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.integration-core
  - 020.event-ingress
  - 030.event-egress
  - 040.sync-binding
  - 050.mapping-rule
  - 060.reconciliation

## 130.development
- existing_subdomain_count: 4
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.integration-core
  - 020.event-ingress
  - 030.event-egress
  - 040.sync-binding
  - 050.mapping-rule
  - 060.reconciliation


# ============================================================
# DOMAIN: 014.security
# ============================================================

## 030.model
- existing_subdomain_count: 11
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 040.runtime
- existing_subdomain_count: 5
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.security-core
  - 020.access-control
  - 030.authentication
  - 040.authorization
  - 050.audit-security
  - 060.threat-response

## 050.flow
- existing_subdomain_count: 6
- missing_subdomain_count: 6
- extra_subdomain_count: 1
- result: NG
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
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.security-core
  - 020.access-control
  - 030.authentication
  - 040.authorization
  - 050.audit-security
  - 060.threat-response

## 070.operations
- existing_subdomain_count: 8
- missing_subdomain_count: 6
- extra_subdomain_count: 3
- result: NG
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
- missing_subdomain_count: 6
- extra_subdomain_count: 2
- result: NG
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
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.security-core
  - 020.access-control
  - 030.authentication
  - 040.authorization
  - 050.audit-security
  - 060.threat-response

## 110.infrastructure
- existing_subdomain_count: 5
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.security-core
  - 020.access-control
  - 030.authentication
  - 040.authorization
  - 050.audit-security
  - 060.threat-response

## 120.implementation
- existing_subdomain_count: 5
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.security-core
  - 020.access-control
  - 030.authentication
  - 040.authorization
  - 050.audit-security
  - 060.threat-response

## 130.development
- existing_subdomain_count: 5
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.security-core
  - 020.access-control
  - 030.authentication
  - 040.authorization
  - 050.audit-security
  - 060.threat-response


# ============================================================
# DOMAIN: 016.war
# ============================================================

## 030.model
- existing_subdomain_count: 11
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 040.runtime
- existing_subdomain_count: 5
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.war-core
  - 020.war-front
  - 030.unit-deployment
  - 040.war-operation
  - 050.war-logistics
  - 060.ceasefire-resolution

## 050.flow
- existing_subdomain_count: 6
- missing_subdomain_count: 6
- extra_subdomain_count: 1
- result: NG
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
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.war-core
  - 020.war-front
  - 030.unit-deployment
  - 040.war-operation
  - 050.war-logistics
  - 060.ceasefire-resolution

## 070.operations
- existing_subdomain_count: 6
- missing_subdomain_count: 6
- extra_subdomain_count: 1
- result: NG
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
- missing_subdomain_count: 6
- extra_subdomain_count: 3
- result: NG
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
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.war-core
  - 020.war-front
  - 030.unit-deployment
  - 040.war-operation
  - 050.war-logistics
  - 060.ceasefire-resolution

## 110.infrastructure
- existing_subdomain_count: 5
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.war-core
  - 020.war-front
  - 030.unit-deployment
  - 040.war-operation
  - 050.war-logistics
  - 060.ceasefire-resolution

## 120.implementation
- existing_subdomain_count: 5
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.war-core
  - 020.war-front
  - 030.unit-deployment
  - 040.war-operation
  - 050.war-logistics
  - 060.ceasefire-resolution

## 130.development
- existing_subdomain_count: 5
- missing_subdomain_count: 6
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 010.war-core
  - 020.war-front
  - 030.unit-deployment
  - 040.war-operation
  - 050.war-logistics
  - 060.ceasefire-resolution


# ============================================================
# DOMAIN: 018.meta
# ============================================================

## 030.model
- existing_subdomain_count: 38
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 040.runtime
- existing_subdomain_count: 40
- missing_subdomain_count: 2
- extra_subdomain_count: 4
- result: NG
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
- missing_subdomain_count: 2
- extra_subdomain_count: 3
- result: NG
- missing_subdomains:
  - 040.registry
  - 050.domain
- extra_subdomains:
  - 013.meta
  - 180.misc
  - 999.meta

## 060.integration
- existing_subdomain_count: 36
- missing_subdomain_count: 2
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 040.registry
  - 050.domain

## 070.operations
- existing_subdomain_count: 44
- missing_subdomain_count: 2
- extra_subdomain_count: 8
- result: NG
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
- missing_subdomain_count: 2
- extra_subdomain_count: 3
- result: NG
- missing_subdomains:
  - 040.registry
  - 050.domain
- extra_subdomains:
  - 013.meta
  - 200.meta
  - 999.meta

## 100.security
- existing_subdomain_count: 36
- missing_subdomain_count: 2
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 040.registry
  - 050.domain

## 110.infrastructure
- existing_subdomain_count: 36
- missing_subdomain_count: 2
- extra_subdomain_count: 0
- result: NG
- missing_subdomains:
  - 040.registry
  - 050.domain

## 120.implementation
- existing_subdomain_count: 38
- missing_subdomain_count: 2
- extra_subdomain_count: 2
- result: NG
- missing_subdomains:
  - 040.registry
  - 050.domain
- extra_subdomains:
  - 110.meta
  - 180.misc

## 130.development
- existing_subdomain_count: 37
- missing_subdomain_count: 2
- extra_subdomain_count: 1
- result: NG
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
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 040.runtime
- existing_subdomain_count: 47
- missing_subdomain_count: 0
- extra_subdomain_count: 1
- result: NG
- extra_subdomains:
  - 006.notification

## 050.flow
- existing_subdomain_count: 46
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 060.integration
- existing_subdomain_count: 46
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 070.operations
- existing_subdomain_count: 48
- missing_subdomain_count: 0
- extra_subdomain_count: 2
- result: NG
- extra_subdomains:
  - 007.content
  - 080.interface

## 080.policy
- existing_subdomain_count: 47
- missing_subdomain_count: 0
- extra_subdomain_count: 1
- result: NG
- extra_subdomains:
  - 150.interface

## 100.security
- existing_subdomain_count: 46
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 110.infrastructure
- existing_subdomain_count: 46
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 120.implementation
- existing_subdomain_count: 46
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 130.development
- existing_subdomain_count: 46
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK


# ============================================================
# DOMAIN: 040.detail
# ============================================================

## 030.model
- existing_subdomain_count: 7
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 040.runtime
- existing_subdomain_count: 7
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 050.flow
- existing_subdomain_count: 7
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 060.integration
- existing_subdomain_count: 7
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 070.operations
- existing_subdomain_count: 7
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 080.policy
- existing_subdomain_count: 7
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 100.security
- existing_subdomain_count: 7
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 110.infrastructure
- existing_subdomain_count: 7
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 120.implementation
- existing_subdomain_count: 7
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

## 130.development
- existing_subdomain_count: 7
- missing_subdomain_count: 0
- extra_subdomain_count: 0
- result: OK

