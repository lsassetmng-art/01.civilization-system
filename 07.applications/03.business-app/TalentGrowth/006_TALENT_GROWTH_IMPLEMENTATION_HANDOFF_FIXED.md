# TALENT GROWTH IMPLEMENTATION HANDOFF FIXED

status: implementation-handoff-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth 実装着手時の handoff 用に、
開始順、最重要非機能、止めてはいけないガードを
固定するための資料である。

# 1. first start package
最初に着手する正式束:
- phase A core evaluation foundation

# 2. first start order
1. session / home / role context
2. employee dashboard
3. certification management
4. skill inventory
5. self review draft / submit
6. manager review queue / input
7. role requirement management
8. growth plan
9. approval / calibration baseline
10. audit search
11. outbox / notification baseline
12. RLS baseline

# 3. non-negotiables
- no publish without approval
- no raw full-evaluation access by default admin
- no offline final submit
- no missing audit on score-changing action
- no hidden invalid transition
- no duplicate finalization on repeated submit
- no notification direct send bypassing outbox
- no silent cache-based overwrite of latest review state

# 4. minimal phase A done definition
phase A 完了条件:
- employee が自己評価を保存 / 提出できる
- manager がレビュー保存 / 提出 / 差戻しできる
- HR が要件管理、校正保存、承認できる
- employee に結果と成長計画が見える
- 主要変更の audit が検索できる
- review / send back / result ready / cert expiry の通知が出る
- RLS で self / manager / HR の境界が守られる

# 5. immediate implementation risks
- evaluation state machine の抜け
- lock_version conflict 未実装
- audit_trace_id の欠落
- score formula と UI 表示の不一致
- analytics generated_at 未表示
- role scope 漏れ
- export 権限過大
- mobile draft 消失

# 6. required review lenses
- UI / UX review
- API contract review
- DB / DDL review
- RLS review
- event / job review
- release blocker review

# 7. next execution candidates after phase A
- phase B profile / evidence / analytics basic
- phase C talent strategy and investment
- phase D AI assist and advanced governance

# 8. conclusion
TalentGrowth の実装開始は、
phase A を end-to-end で成立させることを第一目的とし、
governance と audit を後回しにしない。
