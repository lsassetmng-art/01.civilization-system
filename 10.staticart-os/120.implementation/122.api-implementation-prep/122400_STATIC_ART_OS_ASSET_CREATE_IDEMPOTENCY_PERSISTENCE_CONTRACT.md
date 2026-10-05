# StaticArtOS 作品登録の再送安全性: 永続化設計差分

status: design-review-ready
system: StaticArtOS
scope: works_management / `POST /api/v1/staticart/assets`
owner: Boss
database_review: Sato, before apply

## 既存正本との関係

- `120110_STATIC_ART_OS_DB_SCHEMA_EXACTNESS.md` の作品正本は `staticart.asset_master`、版は `staticart.asset_version`、ファイルは `staticart.asset_file`。
- `122140_STATIC_ART_OS_IDEMPOTENCY_AND_CONCURRENCY_SKELETON.md` は同一キー・同一本文の再送に元の結果を返し、異なる本文に 409 を返すと定める。
- `122390_STATIC_ART_OS_CREATOR_ASSET_LIST_AND_CREATE_CONTRACT.md` は登録時の `asset_master` と初期 `asset_version` の原子的作成を定める。
- 現在の Phase 1 SQL に再送結果の保存表はない。API の雛形の `findByKey` と `save` を別々に呼ぶだけでは同時要求の重複を防げない。この差分は既存の作品正本を移さず、API の再送記録だけを追加する。

## 追加する保存表（Phase 1 の変更ではなく後続 migration）

`PERSONA_DATABASE_URL` の `staticart` schema に、Sato のレビュー後に以下の migration を一つのトランザクションで適用する。既存 Phase 1 runner に無審査で追加しない。

```sql
create table staticart.api_idempotency_result (
  actor_user_id uuid not null,
  operation_code text not null,
  idempotency_key text not null,
  request_sha256 text not null check (request_sha256 ~ '^[0-9a-f]{64}$'),
  response_status integer not null check (response_status between 200 and 299),
  response_body jsonb not null,
  asset_id uuid not null references staticart.asset_master(asset_id),
  created_at timestamptz not null default now(),
  primary key (actor_user_id, operation_code, idempotency_key),
  constraint api_idempotency_result_key_nonempty_ck check (length(idempotency_key) between 1 and 255),
  constraint api_idempotency_result_operation_ck check (operation_code = 'asset.create')
);
```

別の書き込み操作を追加するときは `operation_code` の制約をレビュー済み migration で拡張する。`asset_id` は再送記録の参照であり、作品の正本ではない。記録を自動期限切れ・削除しない。保管期限を変更する場合は、クライアントの再送期間と監査要件を別途設計・承認する。

## `asset.create` の一つの DB トランザクション

1. CivilizationOS 側で検証済みの actor と権限を受け取り、StaticArtOS サーバーで creator と publisher の許可を再確認する。検証不能なら書き込みを始めず失敗とする。クライアントの `creator_id` は権限証拠ではない。
2. `Idempotency-Key` と入力を検証し、正規化した `asset_type`、`initial_language_code`、許可された publisher 指定を決定する。actor と operation を主キーに含め、正規化入力の安定した直列化から SHA-256 を計算する。任意の JSON キー順や `X-Request-Id` をハッシュに含めない。
3. DB トランザクションを開始し、actor・operation・key の安定した合成値から導いた PostgreSQL transaction-scoped advisory lock を取得する。すべての登録書き込み経路が同じロック規則を使う。ロック後に保存済み結果を読む。ロックのハッシュ衝突は無関係な要求を直列化するだけで、主キーの一意制約も維持する。単純な先読みだけで登録処理に進まない。
4. 既存結果があれば `request_sha256` を比較し、同じなら保存済みの `response_status` と `response_body` を返す。違えば 409 `STATICART_IDEMPOTENCY_REPLAY_MISMATCH`。どちらも新しい作品を作らない。
5. 新規要求では UUID で `asset_id` を発行し、衝突しない `asset_code` を生成する。時刻だけをコードの一意性に使わない。検証済み actor に紐づく `asset_master` と初期 `asset_version` を挿入し、永続化された値から成功応答を作り、同じトランザクションで再送記録を挿入して commit する。一意制約違反は成功として握りつぶさない。応答を確定する前に別の DB connection で記録を保存しない。
6. DB insert や commit が失敗した場合は全体を rollback し、成功応答を返さない。commit 後に HTTP 応答が失われた場合も、同じキー・本文の再送で記録済みの元結果を返す。

保存表の `response_status` と `response_body` は必須とし、競合制御は transaction-scoped lock と DB 主キーで成立させる。`findByKey` と `save` という既存雛形のインターフェースは、原子的な実行 API に置き換える。

## 検証条件と適用ゲート

- 異なる二つの同時要求でキーと本文が同じ場合、`asset_master` と初期 `asset_version` は各 1 行、結果は同じ `asset_id`。
- 同じキーで本文が異なる場合は 409、追加作品は 0 行。異なる actor または operation のキーは衝突しない。
- 挿入途中の SQL 失敗では全行が rollback。commit 後の応答消失でも再送は同じ結果。
- 未認証、権限なし、DB 未準備の要求は成功扱いしない。`PERSONA_DATABASE_URL` で Phase 1 表がない現状、migration と登録 API を実 DB に適用しない。
- Sato の SQL レビュー、Phase 1 の適用・検証、CivilizationOS の actor 検証接続が確認されてから、migration、API、実 UI の順で動作検証する。AWS runtime への変更は別途判定する。
