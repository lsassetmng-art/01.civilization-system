# ============================================================
# SHIFT MANAGER API DTO INVENTORY
# ============================================================

status: design-fixed-candidate
type: api-dto-inventory
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document organizes input/output DTO units
for ShiftManager APIs.

purpose:
- clarify which APIs use which DTOs
- keep draft DTO and publication DTO separate
- separate share-rule DTO and visible-result DTO
- isolate ERP export DTOs
- keep notification DTOs separate from viewing DTOs

# ============================================================
# 2. DTO SPLIT PRINCIPLES
# ============================================================

principles:
1. separate request DTO and response DTO
2. separate draft DTO and publication DTO
3. separate share-rule DTO and visible-result DTO
4. isolate ERP export DTO
5. do not create giant DTOs for UI convenience
6. separate list DTO and detail DTO

# ============================================================
# 3. DTO GROUPS
# ============================================================

dto_groups:
- common DTO
- bootstrap DTO
- schedule DTO
- assignment DTO
- validation DTO
- publication DTO
- share DTO
- view DTO
- notification DTO
- ERP DTO
- history / audit DTO

# ============================================================
# 4. COMMON DTO
# ============================================================

common_dto:
- ApiResultDto
- ApiErrorDto
- RequestMetaDto
- PageRequestDto
- PageResponseDto
- PeriodRangeDto

# ============================================================
# 5. BOOTSTRAP DTO
# ============================================================

bootstrap_dto:
- BootstrapResponseDto
- BootstrapProfileDto
- BootstrapCapabilitiesDto

# ============================================================
# 6. SCHEDULE DTO
# ============================================================

schedule_dto:
- ScheduleListItemDto
- ScheduleListResponseDto
- ScheduleDetailDto
- ScheduleSummaryDto
- ScheduleDetailResponseDto
- CreateScheduleRequestDto
- CreateScheduleResponseDto
- UpdateScheduleRequestDto

# ============================================================
# 7. ASSIGNMENT DTO
# ============================================================

assignment_dto:
- AssignmentDto
- AssignmentListResponseDto
- CreateAssignmentRequestDto
- CreateAssignmentResponseDto
- UpdateAssignmentRequestDto

# ============================================================
# 8. VALIDATION DTO
# ============================================================

validation_dto:
- ValidationWarningDto
- ValidationSummaryDto
- ValidateForPublicationResponseDto

# ============================================================
# 9. PUBLICATION DTO
# ============================================================

publication_dto:
- PublishRequestDto
- PublishResponseDto
- RepublishRequestDto
- RepublishResponseDto
- PublicationListItemDto
- PublicationListResponseDto

# ============================================================
# 10. SHARE DTO
# ============================================================

share_dto:
- ShareRuleTargetDto
- ShareRuleDto
- ShareRuleListResponseDto
- CreateShareRuleRequestDto
- CreateShareRuleResponseDto
- UpdateShareRuleRequestDto
- SharePreviewScopeBreakdownDto
- SharePreviewViewerDto
- SharePreviewResponseDto

# ============================================================
# 11. VIEW DTO
# ============================================================

view_dto:
- MyShiftItemDto
- MyShiftListResponseDto
- VisibleShiftListItemDto
- VisibleShiftListResponseDto
- ShiftDetailResponseDto

# ============================================================
# 12. NOTIFICATION DTO
# ============================================================

notification_dto:
- NotificationItemDto
- NotificationListResponseDto
- MarkNotificationReadResponseDto
- RetryNotificationResponseDto

# ============================================================
# 13. ERP DTO
# ============================================================

erp_dto:
- ErpLinkageListItemDto
- ErpLinkageListResponseDto
- ExportErpRequestDto
- ExportErpResponseDto
- RetryErpExportResponseDto
- ErpLinkageDetailResponseDto
- ErpExportHeaderDto
- ErpExportDetailDto
- ErpExportPayloadDto

# ============================================================
# 14. HISTORY / AUDIT DTO
# ============================================================

history_audit_dto:
- PublishHistoryItemDto
- PublishHistoryListResponseDto
- ShareHistoryItemDto
- ShareHistoryListResponseDto
- AccessAuditItemDto
- AccessAuditListResponseDto

# ============================================================
# 15. IMPORTANT DESIGN DECISIONS
# ============================================================

important_points:
- separate ScheduleDetailDto from publication DTOs
- separate ShareRuleDto from VisibleShiftListItemDto
- isolate ErpExportPayloadDto from internal app DTOs
- separate list DTOs and detail DTOs

# ============================================================
# 16. CONCLUSION
# ============================================================

ShiftManager DTOs are naturally grouped into:
- bootstrap
- draft-related
- publication
- share
- view
- notification
- erp
- history/audit

This keeps API exact-contract design stable before implementation.

