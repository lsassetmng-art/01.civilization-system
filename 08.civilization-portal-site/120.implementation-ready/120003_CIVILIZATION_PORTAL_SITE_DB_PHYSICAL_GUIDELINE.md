# ============================================================
# CIVILIZATION PORTAL SITE DB PHYSICAL GUIDELINE
# ============================================================

status: canonical-design
layer: implementation-ready
domain: db-physical-guideline
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site DB の物理方針を定義する。

# ============================================================
# 2. 方針
# ============================================================

- schema は `portal`
- 固定コード系は text 主キー
- 運用レコード系は uuid 主キー
- 時刻列は timestamptz
- 状態列は text + check constraint
- 単純複数コードは text[]
- 構造付き可変情報は jsonb
- 主要テーブルに created_at / updated_at を持つ
- 管理監査を保持する

# ============================================================
# 99. 上位参照
# ============================================================

本個別文書を読む際の上位参照は次の通りとする。

root:
- ../000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- ../000_CIVILIZATION_PORTAL_SITE_INDEX.md
- ../00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

layer:
- 同一レイヤの *_OVERVIEW.md
- 同一レイヤの *_INDEX.md

原則として、
個別文書で詳細を確認し、
必要に応じて同一レイヤの overview / index へ戻り、
さらに必要に応じてルート正本へ戻る。
