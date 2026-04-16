# ============================================================
# PROJECT FLOW REPOSITORY AND GATEWAY INTERFACE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines repository and gateway interface direction.

repository_interfaces:
- ProjectRepository
- TaskRepository
- MilestoneRepository
- IssueRepository
- RiskRepository
- TimeEntryRepository
- SyncRequestRepository
- SyncLogRepository
- ExportJobRepository
- ProgressReportDraftRepository
- FormRequestRepository
- MemoRepository
- CommentRepository
- AutomationRuleRepository
- NotificationRepository
- ProjectTemplateRepository
- ProjectTemplateTaskRepository
- ScheduleProposalRepository

repository_rules:
- repositories own application data persistence concerns
- repositories do not call shared BusinessOS directly
- repositories return domain-oriented data structures

gateway_interfaces:
- SharedBusinessOsProjectFlowGateway
- SharedBusinessOsSyncGateway
- SharedBusinessOsReferenceMasterGateway
- FileExportGateway
- OptionalNotificationGateway
- EntitlementGateway or EntitlementResolverBoundary

gateway_rules:
- gateways isolate external or boundary-facing concerns
- ERP direct gateway is forbidden
- exact boundary payloads must match fixed contract design

interface_shape_guidance:
methods should clearly distinguish:
- command style actions
- query style reads
- mutation with side effects
- output generation requests
