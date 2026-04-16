# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE DTO INVENTORY EXTENSION
# ============================================================

status: implementation-facing-fixed-candidate
type: additional-feature-dto-inventory-extension
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document adds the DTO inventory
for newly adopted competitive features.

# ============================================================
# 2. REQUESTED DAY-OFF DTOs
# ============================================================

requested_day_off_request_dtos:
- RequestedDayOffSubmitRequestDto
- RequestedDayOffReviewRequestDto

requested_day_off_response_dtos:
- RequestedDayOffSummaryDto
- RequestedDayOffDetailDto
- RequestedDayOffReviewResultDto

# ============================================================
# 3. SCHEDULED AUTO GENERATION DTOs
# ============================================================

auto_generation_schedule_request_dtos:
- AutoGenerationScheduleCreateRequestDto
- AutoGenerationScheduleUpdateRequestDto
- AutoGenerationRunNowRequestDto

auto_generation_schedule_response_dtos:
- AutoGenerationScheduleSummaryDto
- AutoGenerationScheduleDetailDto
- AutoGenerationExecutionSummaryDto
- AutoGenerationExecutionDetailDto

# ============================================================
# 4. DIFFERENCE / CONFIRMATION DTOs
# ============================================================

difference_confirmation_request_dtos:
- ChangeConfirmationRequestDto

difference_confirmation_response_dtos:
- PublicationDifferenceSummaryDto
- PublicationDifferenceDetailDto
- ChangeConfirmationStatusDto
- ChangeConfirmationResultDto

# ============================================================
# 5. HEADQUARTERS DTOs
# ============================================================

headquarters_response_dtos:
- HeadquartersSiteDashboardItemDto
- HeadquartersSiteDashboardResponseDto
- SiteAnalyticsItemDto
- SiteAnalyticsResponseDto

# ============================================================
# 6. COMMON RULE
# ============================================================

common_rule:
- request and response DTOs remain separate
- internal fixed enum/code values remain unchanged
- DTO field names remain stable and language-neutral

# ============================================================
# 7. CONCLUSION
# ============================================================

These DTOs should be treated as the starter DTO set
for the additional competitive features.

