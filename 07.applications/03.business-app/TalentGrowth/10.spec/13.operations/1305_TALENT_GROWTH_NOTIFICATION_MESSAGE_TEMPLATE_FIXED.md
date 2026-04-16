# TALENT GROWTH NOTIFICATION MESSAGE TEMPLATE FIXED

status: draft-notification-template-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の通知メッセージについて、
template key,
param,
priority,
deep link,
channel stance を固定するための資料である。

前提:
- 通知は event から生成される
- user-facing text は template key から解決する
- push は短く
- in-app はやや詳細
- 機微情報は本文に出しすぎない

# 1. template naming rule
format:
- tg.notify.<notification_type>.<part>

examples:
- tg.notify.review_request.title
- tg.notify.review_request.body
- tg.notify.result_ready.title
- tg.notify.result_ready.body

# 2. common params
- employee_name
- target_employee_name
- cycle_name
- certification_name
- due_date
- days_left
- plan_title
- export_type_label

# 3. template fixed set

## 3-1. REVIEW_REQUEST
notification_type_code:
- REVIEW_REQUEST
priority_code:
- HIGH
deep_link_type:
- EVALUATION_SHEET
title_key:
- tg.notify.review_request.title
body_key:
- tg.notify.review_request.body

recommended body params:
- target_employee_name
- cycle_name

ja example:
- title: レビュー依頼があります
- body: {target_employee_name} さんの評価レビューが必要です（{cycle_name}）。

## 3-2. ACTION_REQUIRED
notification_type_code:
- ACTION_REQUIRED
priority_code:
- HIGH
deep_link_type:
- EVALUATION_SHEET or GROWTH_PLAN
title_key:
- tg.notify.action_required.title
body_key:
- tg.notify.action_required.body

ja example:
- title: 対応が必要です
- body: 差戻しまたは未対応事項があります。内容を確認してください。

## 3-3. RESULT_READY
notification_type_code:
- RESULT_READY
priority_code:
- NORMAL
deep_link_type:
- EVALUATION_RESULT
title_key:
- tg.notify.result_ready.title
body_key:
- tg.notify.result_ready.body

ja example:
- title: 評価結果が公開されました
- body: {cycle_name} の評価結果を確認できます。

## 3-4. CERT_EXPIRY_ALERT
notification_type_code:
- CERT_EXPIRY_ALERT
priority_code:
- HIGH
deep_link_type:
- EMPLOYEE_CERTIFICATION
title_key:
- tg.notify.cert_expiry_alert.title
body_key:
- tg.notify.cert_expiry_alert.body

recommended body params:
- certification_name
- days_left

ja example:
- title: 資格の期限が近づいています
- body: {certification_name} の期限まで残り {days_left} 日です。

## 3-5. GROWTH_REVIEW_DUE
notification_type_code:
- GROWTH_REVIEW_DUE
priority_code:
- NORMAL
deep_link_type:
- GROWTH_PLAN
title_key:
- tg.notify.growth_review_due.title
body_key:
- tg.notify.growth_review_due.body

ja example:
- title: 成長計画の見直し時期です
- body: {plan_title} の見直し期限は {due_date} です。

## 3-6. EXPORT_READY
notification_type_code:
- EXPORT_READY
priority_code:
- LOW
deep_link_type:
- EXPORT_JOB
title_key:
- tg.notify.export_ready.title
body_key:
- tg.notify.export_ready.body

ja example:
- title: エクスポートの準備が完了しました
- body: {export_type_label} をダウンロードできます。

## 3-7. EXPORT_FAILED
notification_type_code:
- EXPORT_FAILED
priority_code:
- HIGH
deep_link_type:
- EXPORT_JOB
title_key:
- tg.notify.export_failed.title
body_key:
- tg.notify.export_failed.body

ja example:
- title: エクスポートに失敗しました
- body: {export_type_label} の出力に失敗しました。再実行してください。

# 4. channel-specific shortening rule

## IN_APP
- title + body 完全表示可
- deep link 必須
- unread 管理あり

## PUSH
- title は短く
- body は 40〜80字程度推奨
- 機微詳細は含めすぎない
- lock screen 表示前提で安全側に寄せる

## EMAIL
- formal trace が必要な時のみ
- subject + short summary + system link
- raw sensitive comment は本文に直書きしない

# 5. localization rule
- title_key / body_key は locale 切替対応
- params は locale-aware formatting
- date / currency / number は locale format
- certification_name など snapshot label は requested locale 優先

# 6. dedupe rule
同一通知重複の抑制対象:
- same notification_type_code
- same target_employee_id
- same deep_link_target_id
- within dedupe window

# 7. template safety rule
本文に含めない推奨情報:
- raw calibration note
- full evaluation comment
- sensitive risk note
- detailed AI output
- break-glass対象情報

# 8. 結論
TalentGrowth の notification message template は、
type,
title_key,
body_key,
params,
deep_link
を固定して管理する。

中核原則は以下である。
- event payload != user message
- short and safe on push
- detail in deep link target
