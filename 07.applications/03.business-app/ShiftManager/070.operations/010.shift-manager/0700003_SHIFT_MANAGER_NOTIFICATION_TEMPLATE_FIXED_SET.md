# ============================================================
# SHIFT MANAGER NOTIFICATION TEMPLATE FIXED SET
# ============================================================

status: implementation-facing-fixed-candidate
type: notification-template-fixed-set
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the initial Japanese notification templates
used by ShiftManager.

These templates are intended for:
- in-app notification
- push notification text basis
- publication/republication reminder wording

# ============================================================
# 2. BASIC RULES
# ============================================================

rules:
- templates start in Japanese
- wording should be short and operationally clear
- title and body should remain distinct
- publication-related wording should not imply universal visibility
- same_day wording should be concrete
- urgent_change wording should emphasize immediate review
- auto generation itself does not notify staff before publication

# ============================================================
# 3. TEMPLATE VARIABLES
# ============================================================

available_variables:
- period_label
- start_time
- end_time
- office_name
- shift_date
- publication_version_no

variable_notes:
period_label:
- example: 2026-04-13週
- example: 2026年4月第2週

start_time / end_time:
- display example: 09:00 / 18:00

office_name:
- display example: Tokyo Office

shift_date:
- display example: 2026-04-10

# ============================================================
# 4. PUBLISH
# ============================================================

notification_type:
- publish

title:
シフトが公開されました

body:
{period_label} のシフトが公開されました。内容を確認してください。

short_push_body:
{period_label} のシフトが公開されました。

usage_notes:
- used after initial publish
- should link to the newly published view
- should not imply that everyone can view it

# ============================================================
# 5. REPUBLISH
# ============================================================

notification_type:
- republish

title:
シフトが更新されました

body:
{period_label} のシフトに変更があります。最新内容を確認してください。

short_push_body:
{period_label} のシフトが更新されました。

usage_notes:
- used after republish
- intended to trigger re-check by already permitted viewers

# ============================================================
# 6. SAME_DAY
# ============================================================

notification_type:
- same_day

title:
本日の勤務予定

body:
本日の勤務は {start_time}〜{end_time}、{office_name} です。

short_push_body:
本日の勤務は {start_time}〜{end_time} です。

usage_notes:
- default timing = 1 hour before shift start
- should remain simple and concrete

# ============================================================
# 7. URGENT_CHANGE
# ============================================================

notification_type:
- urgent_change

title:
至急確認：勤務予定が変更されました

body:
勤務予定に重要な変更があります。最新内容を確認してください。

short_push_body:
勤務予定に重要な変更があります。至急確認してください。

usage_notes:
- should deep-link to the latest detail when possible
- should be used only for manager-authorized urgent changes

# ============================================================
# 8. OPTIONAL DETAIL EXTENSIONS
# ============================================================

optional_body_extensions:
- 対象日: {shift_date}
- 版番号: v{publication_version_no}

usage_policy:
- optional details may be appended for in-app display
- push display should remain shorter

# ============================================================
# 9. FUTURE EXTENSION DIRECTION
# ============================================================

future_extensions:
- multilingual template sets
- channel-specific wording differences
- richer urgent templates
- role-specific wording
- print/export-related notification wording if needed

# ============================================================
# 10. CONCLUSION
# ============================================================

This document fixes the initial operational Japanese notification wording
for ShiftManager:
- publish
- republish
- same_day
- urgent_change

