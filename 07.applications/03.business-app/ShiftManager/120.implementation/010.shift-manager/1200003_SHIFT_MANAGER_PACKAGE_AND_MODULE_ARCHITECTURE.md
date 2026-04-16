# ============================================================
# SHIFT MANAGER PACKAGE AND MODULE ARCHITECTURE
# ============================================================

status: design-fixed-candidate
type: package-and-module-architecture
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes how ShiftManager responsibilities
should be split before implementation begins.

This is not implementation.
It is a design-level responsibility split document.

# ============================================================
# 2. SPLIT PRINCIPLES
# ============================================================

ShiftManager should be split by business responsibility,
not only by screen.

reasons:
- draft and publication have different meanings
- share rules and visible result are different responsibilities
- receiving/viewing responsibility differs from management responsibility
- ERP linkage should remain isolated
- notification is a delivery responsibility, not only a minor helper

split_principles:
1. separate draft and publication
2. separate share rules and view results
3. isolate notification as its own responsibility
4. isolate ERP linkage as its own responsibility
5. externalize auth / permission context as common responsibility
6. do not mix business responsibility for UI convenience

# ============================================================
# 3. LOGICAL ROOT STRUCTURE
# ============================================================

recommended_root_packages:
- app
- bootstrap
- auth
- common
- dashboard
- draft
- publication
- share
- view
- notification
- erp
- audit
- settings
- infrastructure

# ============================================================
# 4. RESPONSIBILITY OF EACH PACKAGE
# ============================================================

app:
- application entry point
- overall initialization
- shared configuration loading
- top-level dependency grouping

bootstrap:
- startup / initial judge
- access confirmation
- initial role check
- first destination decision

auth:
- company_id / person_id / role context
- permission helper
- BusinessOS auth context adapter

common:
- shared DTO
- shared model
- shared exceptions
- shared date/time utilities
- shared UI parts
- constants

dashboard:
- home / dashboard summary
- entry points to draft / notification / ERP status

draft:
- create draft schedules
- edit draft schedules
- manage draft assignments
- support day/week/month/person-based editing
- stop before final publication responsibility

publication:
- publish
- republish
- publication fixation
- publication history
- draft to publication conversion responsibility

share:
- share-rule management
- share preview
- stop share
- publish target confirmation
- request view-scope rebuild

view:
- my shift
- today shift
- week/month viewing
- detail viewing
- visible shift list
- other-person shift view in allowed scope

notification:
- notification list
- mark read
- retry failed notifications
- deep link routing

erp:
- ERP linkage state
- publication export
- retry export
- payload builder
- ERP connector boundary

audit:
- publish history query
- share history query
- access audit query

settings:
- display settings
- notification settings
- week start setting

infrastructure:
- DB access
- API clients
- repository implementations
- notification transport
- ERP transport
- session context adapter

# ============================================================
# 5. CORE SIX RESPONSIBILITIES
# ============================================================

core_responsibilities:
- draft
- publication
- share
- view
- notification
- erp

# ============================================================
# 6. DEPENDENCY DIRECTION
# ============================================================

recommended_direction:
- bootstrap -> auth / dashboard
- dashboard -> draft / notification / erp via entry navigation
- draft -> publication handoff
- publication -> share / notification / erp coordination
- share -> view-scope rebuild request
- view -> publication + evaluated visibility result
- notification -> publication/view result reference
- erp -> publication fixed result reference

must_avoid:
- draft directly owning ERP connector
- view directly editing share rules
- notification owning share-rule logic itself
- UI directly calling DB implementation
- scattered permission logic per screen
- oversized common junk box

# ============================================================
# 7. MVP MINIMUM LOGICAL SPLIT
# ============================================================

mvp_minimum:
- app
- bootstrap
- auth
- common
- dashboard
- draft
- publication
- share
- view
- notification
- erp
- infrastructure

audit_and_settings:
- may be split later if needed

# ============================================================
# 8. CONCLUSION
# ============================================================

ShiftManager should be split by responsibility rather than only by screen.

especially_important:
- draft owns editable draft responsibility
- publication owns fixed published responsibility
- share owns visibility conditions
- view owns visible result
- notification owns delivery state
- erp owns external enterprise boundary

