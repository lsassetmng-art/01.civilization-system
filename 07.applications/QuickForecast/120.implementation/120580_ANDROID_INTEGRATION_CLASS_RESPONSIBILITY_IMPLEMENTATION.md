# ============================================================
# ANDROID INTEGRATION CLASS RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines integration-layer class responsibilities.

integration.gateway_candidates:
- GeneralSignalGateway
- ErpReferenceGateway
- ApprovalGateway
- HandoffGateway
- ShareGateway
- SyncGateway

integration.dto_candidates:
- ErpReferenceDto
- ApprovalRequestDto
- ApprovalResultDto
- HandoffRequestDto
- HandoffResultDto
- ShareTargetDto

integration.mapper_candidates:
- ForecastEntityMapper
- ProposalEntityMapper
- ProfitEntityMapper
- ApprovalMapper
- HandoffMapper
- ShareMapper

principles:
- gateways isolate transport / remote contract details
- DTOs do not leak into UI state directly
- mappers preserve separation between canonical/domain/local/remote shapes
