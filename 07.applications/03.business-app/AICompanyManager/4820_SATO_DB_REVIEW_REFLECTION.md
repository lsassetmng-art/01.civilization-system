# AICompanyManager 佐藤（DB担当）レビュー反映メモ

phase: Phase AY
status: ddl-review-reflection
reviewer: 佐藤（DB担当）
db_apply: false

## 1. レビュー結論

現時点では DB 適用しない。

Phase AX の DDL draft を、適用前レビュー用 refined draft として整理した。

## 2. 反映方針

### 2.1 schema

schema は business 候補のまま。

理由:
- AICompanyManager は BusinessOS アプリ
- 会社、部門、組織、台帳、承認などの業務管理事実を持つ
- AIWorker本体正本ではない

### 2.2 aiworker_robot_id

aiworker_robot_id は物理FKにしない。

理由:
- AIWorkerOS の実体正本との cross-schema ownership が未確定
- 現時点では論理参照で十分
- 物理FKは後続Phaseで再検討

### 2.3 company_id重複

department_id や organization_id があっても、child table に company_id を持たせる。

理由:
- RLS設計で company_id を直接使いやすい
- 一覧・絞り込みが軽い
- BusinessOS系の会社境界が明確になる

注意:
- company_id と department_id の整合は後続で trigger または composite FK を検討

### 2.4 updated_at

updated_at trigger は今回入れない。

理由:
- 共通 trigger は別Phaseでまとめて設計した方が安全
- 今回はDDL構造のレビューを優先

### 2.5 RLS

RLS は今回入れない。

理由:
- table構造確定前にRLSを書くと修正が重い
- RLSは Phase AZ 以降で別設計にする

## 3. 佐藤レビューで次に見る点

- company_id 重複を許容するか
- cross-company整合をtriggerで守るか composite FKで守るか
- status値をCHECKのままにするか enum table化するか
- AI workflow table の粒度が十分か
- review_item / delivery_candidate / review_action の分離が妥当か
- CSV preview/import の履歴粒度が十分か

## 4. DB適用条件

Bossが明示的に DB OK と言うまで適用禁止。

適用時は原則:

- PERSONA_DATABASE_URL
- psql "$PERSONA_DATABASE_URL" <<'SQL'
- SQL
