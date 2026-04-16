# ============================================================
# CIVILIZATION PORTAL SITE OVERVIEW
# ============================================================

status: canonical-design
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Civilization Portal Site の最上位概要を定義する文書である。

本書の目的は、
Civilization Portal Site のシステム定義、
Civilization 全体における位置づけ、
基本原則、
責務境界を短く固定することにある。

# ============================================================
# 2. システム定義
# ============================================================

Civilization Portal Site は、
Civilization 全体の公開情報を提供する
Webサイト / Webアプリであり、
各OSへの唯一の公式Web入口を担うポータルシステムとする。

Civilization Portal Site は、次を担う。

- Civilization 世界観の公開説明
- 各OSの紹介
- 各OSへの唯一の公式Web導線
- 新規登録案内
- ログイン案内
- ログイン済み利用者向けWebランチャー
- お知らせ表示
- メンテナンス案内
- ポータル運営管理

# ============================================================
# 3. Civilization 全体における位置づけ
# ============================================================

Civilization Portal Site の位置づけは次の通りとする。

- Civilization 全体の公開入口
- 外部から最初に到達するWeb情報サイト
- 各OSへの唯一の公式Webリンク保持主体
- ログイン済み利用者向けWebランチャー提供主体
- ポータル運営管理主体

CivilizationOS の位置づけは次の通りとする。

- 新規登録正本
- 認証正本
- Civilization ID 発行正本
- ログイン後に文明シミュレーション世界が開始する中核OS

各OSの位置づけは次の通りとする。

- PersonaOS
- BusinessOS
- GameOS
- StreamingOS
- LifeOS
- 将来追加されるその他OS

各OSは Civilization Portal Site からWeb遷移によって入る利用先であり、
OS間の直接リンクは許可しない。

# ============================================================
# 4. 基本原則
# ============================================================

- 新規登録は CivilizationOS のみが担う。
- 認証は CivilizationOS のみが担う。
- Civilization ID は全OS共通のログイン主体識別子とする。
- 各OSへのリンクは Civilization Portal Site のみが保持する。
- OS間の直接リンクは禁止する。
- 各OS利用には Civilization ID ベースのログインを必須とする。
- 未ログイン時は CivilizationOS のWebログインページへ誘導する。
- 認証成功後は原則として要求元の対象OS Web入口へ復帰させる。
- Civilization Portal Site はWeb入口制御のみを担う。
- 各OS内部の詳細権限制御は各OSが担う。

# ============================================================
# 5. 責務境界
# ============================================================

Civilization Portal Site が担う責務は次の通りとする。

- 公開情報提供
- Civilization 世界観説明
- 各OS紹介
- 各OSへの唯一のWeb導線提供
- 新規登録案内
- ログイン案内
- Webランチャー提供
- Web遷移前の前段判定
- お知らせ掲載
- メンテナンス案内
- ポータルWeb管理画面提供

Civilization Portal Site が担わない責務は次の通りとする。

- 新規登録正本処理
- 認証正本処理
- Civilization ID 発行
- 各OS内部処理
- 各OS内部データ管理
- 各OS内部詳細権限制御
- OS間直接遷移

# ============================================================
# 6. 主要Webページ群
# ============================================================

公開Webページ:
- トップ
- Civilization紹介
- OS一覧
- OS詳細
- お知らせ
- 利用案内
- ヘルプ

認証導線Webページ:
- ログイン案内
- 新規登録案内
- 認証復帰
- アクセス不可
- メンテナンス
- エラー案内

ログイン後Webページ:
- マイランチャー
- 最近使ったOS
- おすすめOS
- 利用者向けお知らせ

管理Webページ:
- ダッシュボード
- OS掲載管理
- お知らせ管理
- メンテ管理
- 特集管理
- 文言管理
- 監査ログ閲覧

# ============================================================
# 7. 最終定義
# ============================================================

Civilization Portal Site は、
Civilization 全体の公開入口であり、
各OSへの唯一の公式Web導線を保持する正規ポータルである。

CivilizationOS は、
新規登録、認証、Civilization ID 発行の正本である。

Civilization Portal Site は、
公開案内、OS紹介、公式Web導線、
ログイン済み利用者向けWeb入口、
およびポータル運営管理を担う。

すべてのOS入口は Civilization Portal Site を経由しなければならない。

# ============================================================
# 8. 詳細設計参照
# ============================================================

本概要文書の詳細設計は、次の分割文書群を参照する。

architecture:
- 020.architecture/020000_CIVILIZATION_PORTAL_SITE_ARCHITECTURE.md
- 020.architecture/020001_CIVILIZATION_PORTAL_SITE_SCREEN_ARCHITECTURE.md
- 020.architecture/020002_CIVILIZATION_PORTAL_SITE_NAVIGATION_ARCHITECTURE.md
- 020.architecture/020003_CIVILIZATION_PORTAL_SITE_CIVILIZATIONOS_BOUNDARY_ARCHITECTURE.md

model:
- 030.model/030000_CIVILIZATION_PORTAL_SITE_DOMAIN_MODEL.md
- 030.model/030001_CIVILIZATION_PORTAL_SITE_OS_CARD_MODEL.md
- 030.model/030002_CIVILIZATION_PORTAL_SITE_PERMISSION_MODEL.md
- 030.model/030003_CIVILIZATION_PORTAL_SITE_DATA_MODEL.md

flow:
- 050.flow/050000_CIVILIZATION_PORTAL_SITE_LOGIN_FLOW.md
- 050.flow/050001_CIVILIZATION_PORTAL_SITE_OS_LAUNCH_FLOW.md
- 050.flow/050002_CIVILIZATION_PORTAL_SITE_AUTH_RETURN_FLOW.md
- 050.flow/050003_CIVILIZATION_PORTAL_SITE_ACCESS_DENIED_FLOW.md
- 050.flow/050004_CIVILIZATION_PORTAL_SITE_MAINTENANCE_FLOW.md

integration:
- 060.integration/060000_CIVILIZATION_PORTAL_SITE_CIVILIZATION_AUTH_INTEGRATION.md
- 060.integration/060001_CIVILIZATION_PORTAL_SITE_OS_LAUNCH_INTEGRATION.md
- 060.integration/060002_CIVILIZATION_PORTAL_SITE_RETURN_CONTEXT_INTEGRATION.md
- 060.integration/060003_CIVILIZATION_PORTAL_SITE_API_CONTRACT_SUMMARY.md

operations:
- 070.operations/070000_CIVILIZATION_PORTAL_SITE_ADMIN_OPERATIONS.md
- 070.operations/070001_CIVILIZATION_PORTAL_SITE_NOTICE_OPERATIONS.md
- 070.operations/070002_CIVILIZATION_PORTAL_SITE_MAINTENANCE_OPERATIONS.md
- 070.operations/070003_CIVILIZATION_PORTAL_SITE_AUDIT_OPERATIONS.md

policy:
- 080.policy/080000_CIVILIZATION_PORTAL_SITE_ENTRY_POLICY.md
- 080.policy/080001_CIVILIZATION_PORTAL_SITE_OS_LINK_POLICY.md
- 080.policy/080002_CIVILIZATION_PORTAL_SITE_PERMISSION_POLICY.md
- 080.policy/080003_CIVILIZATION_PORTAL_SITE_PUBLIC_INFORMATION_POLICY.md

implementation-ready:
- 120.implementation-ready/120000_CIVILIZATION_PORTAL_SITE_SCREEN_FIELD_SPEC.md
- 120.implementation-ready/120001_CIVILIZATION_PORTAL_SITE_API_EXACT_CONTRACT.md
- 120.implementation-ready/120002_CIVILIZATION_PORTAL_SITE_DB_LOGICAL_SCHEMA.md
- 120.implementation-ready/120003_CIVILIZATION_PORTAL_SITE_DB_PHYSICAL_GUIDELINE.md
- 120.implementation-ready/120004_CIVILIZATION_PORTAL_SITE_EXACT_COLUMN_DEFINITION.md

