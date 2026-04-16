# ============================================================
# CIVILIZATION PORTAL SITE DATA MODEL
# ============================================================

status: canonical-design
layer: model
domain: data-model
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site の主要論理データモデルを定義する。

# ============================================================
# 2. 主要論理テーブル
# ============================================================

- portal.os_category_master
- portal.segment_master
- portal.os_master
- portal.asset
- portal.os_listing
- portal.os_launch_rule
- portal.notice
- portal.feature_slot
- portal.copy
- portal.maintenance
- portal.personalized_launcher_state
- portal.admin_audit_log

# ============================================================
# 3. 責務分離
# ============================================================

- 固定OS定義
- ポータル掲載状態
- Web入口条件
- お知らせ
- 文言
- 画像
- メンテナンス
- ランチャー個人化
- 管理監査

# ============================================================
# 4. 非保持原則
# ============================================================

Portal Site は、
認証正本、所属正本、契約正本、
各OS内部データを保持しない。

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
