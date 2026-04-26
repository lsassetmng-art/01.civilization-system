# AICompanyManager Sato Review Self Check

phase: Phase EG
status: sato-review-self-check
reviewer_next: 佐藤（DB担当）
db_apply: false

## 1. 自己点検結果

現候補はそのままDB適用せず、佐藤レビュー前に以下の要注意点を確認する。

## 2. 重大確認点

### 2.1 gen_random_uuid

DDL candidate は gen_random_uuid を使っている。

確認:
- pgcrypto extension が有効か
- create extension if not exists pgcrypto を apply order に含めるか

結論:
- apply前に extension check を必須にする。

### 2.2 first company bootstrap

company insert は auth.uid があれば可能。
ただし actor_membership の初回Owner作成は、既存Owner/Adminがいないため通常RLSだけでは詰まる可能性がある。

確認:
- 初回company作成時にOwner membershipをどう作るか
- RPC / service role / trigger のどれで作るか

結論:
- bootstrap RPC または service-role controlled endpoint が必要。

### 2.3 company delete

local UI には company delete がある。
DB候補では company delete policy を明示していない。

確認:
- company削除を物理削除にするか
- archived status にするか
- Owner/Admin限定RPCにするか

結論:
- v1では物理削除より archived 推奨。実削除はRPCまたは管理者限定。

### 2.4 aiworker_robot_id型

organization robot assignment は aiworker_robot_id uuid としている。

確認:
- aiworker schema 側のロボットIDが uuid か
- text/code系IDの場合は型を合わせる必要がある

結論:
- 佐藤レビューで aiworker側ID型確認必須。

### 2.5 review action idempotency

review_action は監査ログとして追加される。
二重承認・二重差し戻しの防止方針が必要。

確認:
- review_status 遷移制約
- idempotency key
- action duplicate prevention

結論:
- API/RPC段階で二重実行防止を追加する。

### 2.6 workflow live AIWorkerOS boundary

workflow_run / workflow_step は用意しているが、live AIWorkerOS call は未実行。

確認:
- live call を誰が起動できるか
- AIが人間承認を偽装しない境界
- timeout/retry/error監査

結論:
- DB適用とは別に、AIWorkerOS live call boundary review が必要。

## 3. 現時点の自己判定

DB apply:
- STOP

RLS apply:
- STOP

理由:
- 佐藤レビュー前
- bootstrap方針未確定
- AIWorkerOS ID型未確認
- review idempotency未確定

## 4. 次の自然な工程

- issue list を佐藤レビュー提出パッケージに添える
- apply order plan に extension / DDL / bootstrap / RLS / verification を明記する
- final SQL split plan を作る
