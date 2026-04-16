# TALENT GROWTH APPROVAL AND REVIEW STATE MACHINE

status: draft-state-machine
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の評価レビュー、校正、承認、公開までの状態遷移を固定するための資料である。

# 1. evaluation sheet states
- SELF_REVIEW_DRAFT
- SELF_REVIEW_SUBMITTED
- MANAGER_REVIEW_DRAFT
- MANAGER_REVIEW_SUBMITTED
- HR_REVIEW_IN_PROGRESS
- CALIBRATION_IN_PROGRESS
- APPROVED
- PUBLISHED
- SENT_BACK
- REOPENED
- ARCHIVED

# 2. 遷移原則
- employee は SELF_REVIEW_DRAFT まで編集可能
- submit 後は employee の直接編集を制限する
- manager review 保存は MANAGER_REVIEW_DRAFT とする
- manager submit 後は HR review に入る
- calibration は HR 主導
- approved 後に publish を行う
- publish 後の修正は reopen flow 必須

# 3. principal transitions
- SELF_REVIEW_DRAFT -> SELF_REVIEW_SUBMITTED
- SELF_REVIEW_SUBMITTED -> MANAGER_REVIEW_DRAFT
- MANAGER_REVIEW_DRAFT -> MANAGER_REVIEW_SUBMITTED
- MANAGER_REVIEW_SUBMITTED -> HR_REVIEW_IN_PROGRESS
- HR_REVIEW_IN_PROGRESS -> CALIBRATION_IN_PROGRESS
- CALIBRATION_IN_PROGRESS -> APPROVED
- APPROVED -> PUBLISHED
- SELF_REVIEW_SUBMITTED -> SENT_BACK
- MANAGER_REVIEW_SUBMITTED -> SENT_BACK
- PUBLISHED -> REOPENED
- REOPENED -> HR_REVIEW_IN_PROGRESS
- PUBLISHED -> ARCHIVED

# 4. sent back rules
- SENT_BACK 理由必須
- 差戻し先ロール必須
- 差戻し後は previous editable state に戻す
- 差戻し履歴は audit 必須

# 5. approval rules
- approval actor は company scope の権限者
- approval comment 任意だが推奨
- publish_after_approval true の場合は承認直後公開可能
- AI は approval actor になれない

# 6. reopen rules
- reopen reason 必須
- reopen actor 記録必須
- reopen 前後差分監査必須
- published result の履歴は消さない

# 7. growth plan states
- DRAFT
- ACTIVE
- IN_PROGRESS
- COMPLETED
- CLOSED
- CANCELLED

# 8. growth plan transitions
- DRAFT -> ACTIVE
- ACTIVE -> IN_PROGRESS
- IN_PROGRESS -> COMPLETED
- COMPLETED -> CLOSED
- ACTIVE -> CANCELLED
- IN_PROGRESS -> CANCELLED

# 9. certification states
- ACTIVE
- EXPIRING_SOON
- EXPIRED
- RENEWAL_IN_PROGRESS
- INACTIVE

# 10. certification transitions
- ACTIVE -> EXPIRING_SOON
- EXPIRING_SOON -> RENEWAL_IN_PROGRESS
- RENEWAL_IN_PROGRESS -> ACTIVE
- EXPIRING_SOON -> EXPIRED
- ACTIVE -> INACTIVE

# 11. 結論
TalentGrowth の状態遷移は、
評価、成長、資格の3系統で固定する。

特に評価は、
- submit
- review
- calibration
- approve
- publish
- reopen
を明示し、
公開後修正を必ず統制下に置く。
