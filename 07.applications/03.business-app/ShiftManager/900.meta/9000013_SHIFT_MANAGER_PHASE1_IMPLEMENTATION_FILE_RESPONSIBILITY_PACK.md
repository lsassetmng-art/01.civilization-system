# ============================================================
# SHIFT MANAGER PHASE 1 IMPLEMENTATION FILE RESPONSIBILITY PACK
# ============================================================

status: implementation-entry
type: phase1-implementation-file-responsibility-pack
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This document fixes the file-level responsibility allocation
for Phase 1 implementation.

It clarifies:
- package split
- controller files
- service files
- repository files
- DTO files
- screen / ViewModel files
- creation order

# ============================================================
# 1. PHASE 1 TARGET
# ============================================================

phase_1_target:
- bootstrap context
- subscription / feature gate
- read-only enforcement
- schedule create/list/detail
- assignment create/update/list
- minimal draft edit UI

# ============================================================
# 2. PACKAGE DIRECTION
# ============================================================

recommended_root_package:
- com.lsam.shiftmanager

recommended_phase1_packages:
- com.lsam.shiftmanager.bootstrap
- com.lsam.shiftmanager.subscription
- com.lsam.shiftmanager.schedule
- com.lsam.shiftmanager.assignment
- com.lsam.shiftmanager.common
- com.lsam.shiftmanager.ui.startup
- com.lsam.shiftmanager.ui.dashboard
- com.lsam.shiftmanager.ui.schedule
- com.lsam.shiftmanager.ui.assignment

# ============================================================
# 3. CONTROLLER RESPONSIBILITY
# ============================================================

controller_files:
- BootstrapController
- SubscriptionController
- ScheduleController
- AssignmentController

controller_responsibility:

BootstrapController:
- handle bootstrap endpoint response composition
- return person/company/role/site/subscription/feature gate/read_only

SubscriptionController:
- return subscription status
- return feature gate
- return trial summary

ScheduleController:
- create schedule
- list schedules
- get schedule detail

AssignmentController:
- create assignment
- update assignment
- list assignments by schedule

controller_rules:
- controllers only receive/return DTOs
- no direct repository access
- read-only checks happen via service/guard layer

# ============================================================
# 4. SERVICE RESPONSIBILITY
# ============================================================

service_files:
- BootstrapService
- SubscriptionStatusService
- FeatureGateService
- ReadOnlyGuardService
- ScheduleService
- AssignmentService

service_responsibility:

BootstrapService:
- orchestrate startup context
- combine auth/profile/subscription/feature gate data

SubscriptionStatusService:
- resolve current site subscription state

FeatureGateService:
- resolve allowed feature flags from subscription state

ReadOnlyGuardService:
- block mutation when inactive
- expose guard method for create/update endpoints

ScheduleService:
- create schedule
- list schedules
- get detail
- validate phase1 schedule rules

AssignmentService:
- create assignment
- update assignment
- list by schedule
- validate time/period/overlap basics

service_rules:
- services own business logic
- services call repositories
- services produce DTO-ready shapes or domain results
- mutation services must call ReadOnlyGuardService first

# ============================================================
# 5. REPOSITORY RESPONSIBILITY
# ============================================================

repository_files:
- SubscriptionRepository
- FeatureGateRepository
- ScheduleRepository
- AssignmentRepository

repository_responsibility:

SubscriptionRepository:
- resolve current site license/subscription row
- resolve trial/active/grace/inactive data

FeatureGateRepository:
- map subscription state to feature flags
- optionally log feature gate decision later

ScheduleRepository:
- insert schedule
- list schedules
- get schedule detail
- support schedule_code uniqueness path

AssignmentRepository:
- insert assignment
- update assignment
- list assignments by schedule
- support overlap query basics

repository_rules:
- repository layer is persistence-only
- no UI logic
- no cross-controller orchestration
- publication logic stays out of phase 1 repositories

# ============================================================
# 6. DTO RESPONSIBILITY
# ============================================================

dto_files:
bootstrap:
- BootstrapResponseDto
- ProfileSummaryDto
- SubscriptionStatusDto
- FeatureGateDto
- ReadOnlyStateDto

schedule:
- ScheduleCreateRequestDto
- ScheduleSummaryDto
- ScheduleDetailDto

assignment:
- AssignmentCreateRequestDto
- AssignmentUpdateRequestDto
- AssignmentSummaryDto

common:
- ApiErrorDto
- MetaRequestIdDto

dto_rules:
- request and response DTOs remain separate
- field names follow fixed payload design
- snake_case mapping preserved at API boundary

# ============================================================
# 7. UI / VIEWMODEL RESPONSIBILITY
# ============================================================

screen_files:
- StartupInitialJudgeScreen
- LoginAccessConfirmationScreen
- HomeDashboardScreen
- ShiftListScreen
- ShiftCreateScreen
- ShiftDetailScreen
- ShiftEditScreen
- WeekViewScreen

viewmodel_files:
- StartupViewModel
- DashboardViewModel
- ShiftListViewModel
- ShiftCreateViewModel
- ShiftDetailViewModel
- ShiftEditViewModel
- WeekViewModel

ui_responsibility:

StartupInitialJudgeScreen / StartupViewModel:
- call bootstrap
- resolve startup route
- show access/loading state

HomeDashboardScreen / DashboardViewModel:
- show role/subscription/read_only summary
- route to shift list

ShiftListScreen / ShiftListViewModel:
- fetch list
- open create/detail
- disable create in inactive

ShiftCreateScreen / ShiftCreateViewModel:
- create draft schedule
- validate basic inputs
- show blocked reason in inactive

ShiftDetailScreen / ShiftDetailViewModel:
- show schedule summary
- open edit if allowed

ShiftEditScreen / ShiftEditViewModel:
- list assignments
- create/update assignment
- show validation errors
- disable mutation in inactive

WeekViewScreen / WeekViewModel:
- provide practical draft-side weekly navigation/edit surface

# ============================================================
# 8. READ-ONLY INSERTION FILES
# ============================================================

read_only_related_files:
- ReadOnlyGuardService
- BootstrapResponseDto
- FeatureGateDto
- StartupViewModel
- DashboardViewModel
- ShiftCreateViewModel
- ShiftEditViewModel
- ShiftListScreen
- ShiftCreateScreen
- ShiftEditScreen

read_only_rule:
- backend guard is authoritative for mutation blocking
- UI disable state is supportive, not authoritative

# ============================================================
# 9. CREATION ORDER
# ============================================================

recommended_creation_order:
1. DTO files
2. repository interfaces / implementations
3. subscription and feature gate services
4. bootstrap service
5. schedule service
6. assignment service
7. controllers
8. viewmodels
9. screens
10. read-only UX adjustments

# ============================================================
# 10. PHASE 1 FILE DONE CONDITIONS
# ============================================================

done_conditions:
- all controller files exist
- all service files exist
- all repository files exist
- DTO starter set exists
- startup/dashboard/schedule/assignment screens exist
- read-only mutation blocking exists in service layer
- inactive UI disabling exists in phase1 screens

# ============================================================
# 11. CONCLUSION
# ============================================================

Phase 1 implementation can now move from:
- endpoint planning
to:
- concrete file creation and responsibility assignment

