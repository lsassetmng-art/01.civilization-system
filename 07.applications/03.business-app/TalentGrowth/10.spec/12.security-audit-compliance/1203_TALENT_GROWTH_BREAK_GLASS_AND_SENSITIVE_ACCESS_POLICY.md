# TALENT GROWTH BREAK-GLASS AND SENSITIVE ACCESS POLICY

status: draft-sensitive-access-policy
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の高機微データに対する
break-glass access と sensitive access の統制を固定するための資料である。

# 1. 高機微対象
- raw evaluation comment
- calibration note
- evaluation_change_audit detailed diff
- successor candidate risk note
- AI prompt summary
- audit export raw files

# 2. 原則
- 通常権限では開けない情報を明確にする
- break-glass は緊急時のみ
- reason 必須
- 時限付き
- full audit 必須
- 事後レビュー必須

# 3. break-glass request fields
- request_id
- requested_by_employee_id
- target_entity_type
- target_entity_id
- requested_reason
- requested_at
- approved_by_employee_id
- approved_at
- access_expires_at
- audit_trace_id

# 4. allowed actors
- HR senior approver
- limited security / governance approver
- system_admin alone is insufficient by default

# 5. denied patterns
- 漠然とした閲覧要求
- 理由未記入
- 期限未設定
- 事後レビュー不要扱い
- 継続常設アクセス

# 6. 結論
TalentGrowth では、
高機微評価情報への例外アクセスも
通常のRLS外の無制限特権ではなく、
統制付きの一時アクセスとして固定する。
