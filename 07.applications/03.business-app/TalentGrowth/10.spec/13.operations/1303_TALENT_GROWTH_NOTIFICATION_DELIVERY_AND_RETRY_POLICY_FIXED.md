# TALENT GROWTH NOTIFICATION DELIVERY AND RETRY POLICY FIXED

status: draft-notification-retry-policy-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の通知配信、
再送、
失敗処理、
優先度制御を固定するための資料である。

# 1. 通知優先度
priority_code:
- CRITICAL
- HIGH
- NORMAL
- LOW

examples:
- REVIEW_REQUEST -> HIGH
- ACTION_REQUIRED -> HIGH
- CERT_EXPIRY_ALERT -> HIGH or NORMAL by days_left
- RESULT_READY -> NORMAL
- EXPORT_READY -> LOW
- EXPORT_FAILED -> HIGH

# 2. channel priority
default channel order:
- IN_APP
- PUSH
- EMAIL
- WEBHOOK_INTERNAL

notes:
- formal trace を要する場合のみ EMAIL を追加
- sensitive content は notification 本文に書きすぎない
- 詳細は deep link 先で権限制御する

# 3. retry policy
## IN_APP
- no external retry concept
- create failure only if DB write fails

## PUSH
- retry with backoff
- recommended max retry: 5

## EMAIL
- retry with backoff
- recommended max retry: 5

## WEBHOOK_INTERNAL
- retry with stricter timeout control
- recommended max retry: 8

# 4. retry backoff example
attempt 1:
- immediate

attempt 2:
- +1 minute

attempt 3:
- +5 minutes

attempt 4:
- +15 minutes

attempt 5:
- +60 minutes

# 5. permanent failure examples
- target employee inactive and no substitute delivery allowed
- unsupported channel for target
- malformed deep link target
- payload template missing permanently

# 6. template policy
notification text is template-driven.

recommended template fields:
- title_key
- body_key
- locale_code
- body_params_json

notes:
- event payload != user message
- locale rendering happens near notification creation or delivery
- sensitive detail should not be embedded into push summary

# 7. quiet hours stance
optional policy:
- LOW priority push may be delayed in quiet hours
- CRITICAL / HIGH may bypass if company policy allows
- IN_APP is always available

# 8. read/unread policy
- unread_flag is per target user
- delivery success != read
- read action is user action or explicit mark-read API

# 9. cancellation policy
notification may be CANCELLED when:
- source business state is no longer relevant
- duplicate detected before delivery
- target changed before send
- cycle closed and stale reminder invalidated

# 10. delivery observability
track at least:
- attempted_at
- delivered_at
- retry_count
- provider_message_id
- last_error_code
- last_error_message
- dedupe_key
- audit_trace_id

# 11. escalation policy
recommend escalation when:
- REVIEW_REQUEST overdue beyond threshold
- repeated failed send for HIGH/CRITICAL event
- certification expiry alert undelivered near expiry
- export failure repeated for same requester

# 12. 結論
TalentGrowth の通知配信は、
priority,
channel,
retry,
failure,
template
を分けて制御する。

中核原則は以下である。
- in-app is baseline
- push/email are derived channels
- retry is controlled
- notification detail is deep-link first
