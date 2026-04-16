# ============================================================
# CIVILIZATION PORTAL SITE INTEGRATED REBUILT
# ============================================================

status: canonical-design-rebuilt
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This file is a non-destructive rebuilt integrated edition
generated from the current root canonical files and split design files.

source_order_file:
/data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/00_CIVILIZATION_PORTAL_SITE_INTEGRATED_REBUILT_ORDER.txt

# ============================================================
# 1. MERGED CONTENT
# ============================================================


# ------------------------------------------------------------
# SOURCE 1
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/00000_CIVILIZATION_PORTAL_SITE_ROOT_FILE_GUIDE.md

# ============================================================
# CIVILIZATION PORTAL SITE ROOT FILE GUIDE
# ============================================================

status: canonical-design-support
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
08.civilization-portal-site 直下にある
ルートファイル群の役割と読む順番を
短く案内する補助文書である。

本書の目的は、
初回参照時に、
どの文書から読めばよいかを
最短で把握できるようにすることにある。

# ============================================================
# 2. ルートファイル一覧
# ============================================================

- 00000_CIVILIZATION_PORTAL_SITE_ROOT_FILE_GUIDE.md
- 0000_CIVILIZATION_PORTAL_SITE_FOLDER_OVERVIEW.md
- 000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- 000_CIVILIZATION_PORTAL_SITE_INDEX.md
- 00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

# ============================================================
# 3. 各ファイルの役割
# ============================================================

00000_CIVILIZATION_PORTAL_SITE_ROOT_FILE_GUIDE.md:
- ルートファイルの読む順番を示す補助文書

0000_CIVILIZATION_PORTAL_SITE_FOLDER_OVERVIEW.md:
- このフォルダ自体が何を意味するかを示す入口文書

000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md:
- Portal Site の最上位概要を示す文書

000_CIVILIZATION_PORTAL_SITE_INDEX.md:
- Portal Site 設計全体の索引文書

00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md:
- Portal Site 設計全体の統合正本本文

# ============================================================
# 4. 推奨読順
# ============================================================

推奨読順は次の通りとする。

1. 00000_CIVILIZATION_PORTAL_SITE_ROOT_FILE_GUIDE.md
2. 0000_CIVILIZATION_PORTAL_SITE_FOLDER_OVERVIEW.md
3. 000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
4. 000_CIVILIZATION_PORTAL_SITE_INDEX.md
5. 00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md
6. 各レイヤ overview / index
7. 各個別文書

# ============================================================
# 5. レイヤフォルダ
# ============================================================

本フォルダ配下のレイヤフォルダは次の通りとする。

- 020.architecture
- 030.model
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 120.implementation-ready
- 900.meta

# ============================================================
# 6. 解釈原則
# ============================================================

- 最上位の本文正本は 00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md とする。
- OVERVIEW は最上位概要とする。
- INDEX は索引とする。
- FOLDER_OVERVIEW はフォルダ入口説明とする。
- ROOT_FILE_GUIDE は読む順番を示す補助文書とする。

# ============================================================
# 7. 現在状態
# ============================================================

本書は補助文書であり、
Portal Site の実装前 canonical design を案内するために置く。

実装、DDL、本番投入はまだ行わない。


# ------------------------------------------------------------
# SOURCE 2
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/0000_CIVILIZATION_PORTAL_SITE_FOLDER_OVERVIEW.md

# ============================================================
# CIVILIZATION PORTAL SITE FOLDER OVERVIEW
# ============================================================

status: canonical-design
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
08.civilization-portal-site フォルダ自体の意味を
短く説明するための入口文書である。

本書の目的は、
このフォルダが Civilization 全体において
どのような位置づけを持つかを
最短で把握できるようにすることにある。

# ============================================================
# 2. フォルダ定義
# ============================================================

08.civilization-portal-site は、
Civilization 全体の公開入口となる
公式Webポータルの設計書群を格納するトップ階層である。

本フォルダは、
各OSへの唯一の公式Web導線、
ログイン案内、
新規登録案内、
ログイン済み利用者向けWebランチャー、
ポータル運営管理に関する設計を保持する。

# ============================================================
# 3. このフォルダを独立配置する理由
# ============================================================

本フォルダを独立トップ階層に置く理由は次の通りとする。

- Portal Site は Civilization 全体の公開入口である。
- Portal Site は単なる docs ではない。
- Portal Site は applications 配下の単独アプリでもない。
- Portal Site は各OSへの唯一の公式Web導線を担う。
- Portal Site は CivilizationOS の認証導線と接続する上位システムである。

# ============================================================
# 4. ルート正本
# ============================================================

本フォルダのルート正本は次の通りとする。

- 000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- 000_CIVILIZATION_PORTAL_SITE_INDEX.md
- 00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

# ============================================================
# 5. レイヤ構成
# ============================================================

本フォルダは次のレイヤ構成を持つ。

- 020.architecture
- 030.model
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 120.implementation-ready
- 900.meta

# ============================================================
# 6. 主要原則
# ============================================================

- 各OSへのリンクは Portal Site のみが保持する。
- OS間の直接リンクは禁止する。
- 新規登録と認証の正本は CivilizationOS が担う。
- Portal Site は Web入口制御のみを担う。
- 各OS内部の詳細権限制御は各OSが担う。
- 実装はまだ行わない。

# ============================================================
# 7. 参照順
# ============================================================

推奨参照順は次の通りとする。

1. 0000_CIVILIZATION_PORTAL_SITE_FOLDER_OVERVIEW.md
2. 000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
3. 000_CIVILIZATION_PORTAL_SITE_INDEX.md
4. 00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md
5. 各レイヤ overview / index
6. 各個別文書

# ============================================================
# 8. 現在状態
# ============================================================

本フォルダは、
Civilization Portal Site の実装前 canonical design を保持する。

実装、DDL、本番投入はまだ行わない。


# ------------------------------------------------------------
# SOURCE 3
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md

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



# ------------------------------------------------------------
# SOURCE 4
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/000_CIVILIZATION_PORTAL_SITE_INDEX.md

# ============================================================
# CIVILIZATION PORTAL SITE INDEX
# ============================================================

status: canonical-design
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Civilization Portal Site 設計の索引文書である。

本書の目的は、
Civilization Portal Site 設計に含まれる主要論点、
参照順、
正本文書の位置づけを固定し、
ルート正本、レイヤ別正本、実装前仕様を
階層的に参照できるようにすることにある。

# ============================================================
# 2. 推奨読順
# ============================================================

推奨読順は次の通りとする。

1. OVERVIEW
2. INTEGRATED
3. architecture
4. model
5. flow
6. integration
7. operations
8. policy
9. implementation-ready

# ============================================================
# 3. ルート正本文書
# ============================================================

Portal Site 設計のルート正本は次の通りとする。

- 000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- 000_CIVILIZATION_PORTAL_SITE_INDEX.md
- 00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

各文書の位置づけは次の通りとする。

- OVERVIEW:
  最上位概要。
  システム定義、位置づけ、基本原則、責務境界を短く固定する。

- INDEX:
  索引文書。
  参照順、論点一覧、レイヤ別参照を固定する。

- INTEGRATED:
  本文正本。
  Portal Site 設計全体を統合本文として保持する。

# ============================================================
# 4. レイヤ別正本文書
# ============================================================

## 4.1 architecture

- 020.architecture/020000_CIVILIZATION_PORTAL_SITE_ARCHITECTURE.md
- 020.architecture/020001_CIVILIZATION_PORTAL_SITE_SCREEN_ARCHITECTURE.md
- 020.architecture/020002_CIVILIZATION_PORTAL_SITE_NAVIGATION_ARCHITECTURE.md
- 020.architecture/020003_CIVILIZATION_PORTAL_SITE_CIVILIZATIONOS_BOUNDARY_ARCHITECTURE.md

対象論点:
- システム全体構造
- Webページ構成
- 導線構造
- CivilizationOS 境界

## 4.2 model

- 030.model/030000_CIVILIZATION_PORTAL_SITE_DOMAIN_MODEL.md
- 030.model/030001_CIVILIZATION_PORTAL_SITE_OS_CARD_MODEL.md
- 030.model/030002_CIVILIZATION_PORTAL_SITE_PERMISSION_MODEL.md
- 030.model/030003_CIVILIZATION_PORTAL_SITE_DATA_MODEL.md

対象論点:
- ドメイン要素
- OSカード
- 入口権限制御
- データモデル

## 4.3 flow

- 050.flow/050000_CIVILIZATION_PORTAL_SITE_LOGIN_FLOW.md
- 050.flow/050001_CIVILIZATION_PORTAL_SITE_OS_LAUNCH_FLOW.md
- 050.flow/050002_CIVILIZATION_PORTAL_SITE_AUTH_RETURN_FLOW.md
- 050.flow/050003_CIVILIZATION_PORTAL_SITE_ACCESS_DENIED_FLOW.md
- 050.flow/050004_CIVILIZATION_PORTAL_SITE_MAINTENANCE_FLOW.md

対象論点:
- ログイン導線
- OS Web入口遷移
- 認証復帰
- アクセス拒否
- メンテナンス導線

## 4.4 integration

- 060.integration/060000_CIVILIZATION_PORTAL_SITE_CIVILIZATION_AUTH_INTEGRATION.md
- 060.integration/060001_CIVILIZATION_PORTAL_SITE_OS_LAUNCH_INTEGRATION.md
- 060.integration/060002_CIVILIZATION_PORTAL_SITE_RETURN_CONTEXT_INTEGRATION.md
- 060.integration/060003_CIVILIZATION_PORTAL_SITE_API_CONTRACT_SUMMARY.md

対象論点:
- CivilizationOS 認証参照
- 各OS Web入口連携
- 復帰文脈
- API区分

## 4.5 operations

- 070.operations/070000_CIVILIZATION_PORTAL_SITE_ADMIN_OPERATIONS.md
- 070.operations/070001_CIVILIZATION_PORTAL_SITE_NOTICE_OPERATIONS.md
- 070.operations/070002_CIVILIZATION_PORTAL_SITE_MAINTENANCE_OPERATIONS.md
- 070.operations/070003_CIVILIZATION_PORTAL_SITE_AUDIT_OPERATIONS.md

対象論点:
- 管理運用
- お知らせ運用
- メンテ運用
- 監査運用

## 4.6 policy

- 080.policy/080000_CIVILIZATION_PORTAL_SITE_ENTRY_POLICY.md
- 080.policy/080001_CIVILIZATION_PORTAL_SITE_OS_LINK_POLICY.md
- 080.policy/080002_CIVILIZATION_PORTAL_SITE_PERMISSION_POLICY.md
- 080.policy/080003_CIVILIZATION_PORTAL_SITE_PUBLIC_INFORMATION_POLICY.md

対象論点:
- 入口原則
- OSリンク原則
- 権限制御原則
- 公開情報原則

# ============================================================
# 5. 実装前仕様文書
# ============================================================

## 5.1 implementation-ready

- 120.implementation-ready/120000_CIVILIZATION_PORTAL_SITE_SCREEN_FIELD_SPEC.md
- 120.implementation-ready/120001_CIVILIZATION_PORTAL_SITE_API_EXACT_CONTRACT.md
- 120.implementation-ready/120002_CIVILIZATION_PORTAL_SITE_DB_LOGICAL_SCHEMA.md
- 120.implementation-ready/120003_CIVILIZATION_PORTAL_SITE_DB_PHYSICAL_GUIDELINE.md
- 120.implementation-ready/120004_CIVILIZATION_PORTAL_SITE_EXACT_COLUMN_DEFINITION.md

対象論点:
- 画面項目表
- API exact contract
- DB論理 schema
- DB物理方針
- exact column 定義

# ============================================================
# 6. 論点一覧
# ============================================================

A. 定義と境界
- システム定義
- CivilizationOS との境界
- 各OSとの境界
- 公式入口原則

B. Webページ構成
- 公開Webページ
- 認証導線Webページ
- ログイン後Webページ
- 管理Web画面

C. 導線と遷移
- 通常Web導線
- OS Web入口遷移
- ログイン要求導線
- 認証復帰導線
- アクセス不可導線
- メンテナンス導線

D. 権限制御
- 表示可否
- 遷移可否
- 主体種別条件
- 所属条件
- 契約条件
- Beta条件
- 法令・地域条件

E. 運営管理
- OS掲載管理
- 特集管理
- お知らせ管理
- メンテナンス管理
- 文言管理
- 監査管理

F. モデルと連携
- OSカードモデル
- データモデル
- CivilizationOS 認証参照
- 各OS起動連携
- return context 管理

G. 実装前仕様
- API exact contract
- 画面項目表
- DB論理 schema
- DB物理方針
- exact column 定義表

# ============================================================
# 7. 解釈原則
# ============================================================

概要文書と統合文書で記述粒度が異なる場合、
統合文書を優先する。

統合文書と分割文書で記述粒度が異なる場合、
統合文書を上位本文正本としつつ、
各分割文書は対応レイヤの詳細正本として扱う。

今後、詳細分割文書を追加する場合、
統合文書との整合を維持しなければならない。

# ============================================================
# 8. 現在の扱い
# ============================================================

Civilization Portal Site 設計は、現時点で次として扱う。

- 実装前 canonical design
- 実装未着手
- DDL未実行
- 将来実装時の参照正本


# ------------------------------------------------------------
# SOURCE 5
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

# ============================================================
# CIVILIZATION PORTAL SITE INTEGRATED DESIGN
# ============================================================

status: canonical-design
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Civilization Portal Site の統合設計を定義する正本本文である。

本書の目的は、
Civilization Portal Site の定義、責務、境界、Webページ、導線、
権限制御、管理運用、データモデル、API連携、
DB設計準備状態を一体の設計として固定することにある。

本書は、今後の実装、レビュー、分割設計、
DB設計、API設計の参照正本とする。

# ============================================================
# 2. システム定義
# ============================================================

Civilization Portal Site は、
Civilization 全体の公開情報を提供する
Webサイト / Webアプリであり、
各OSへの唯一の公式Web入口を担うポータルシステムとする。

Civilization Portal Site は、次を担う。

- 公開情報提供
- Civilization 世界観説明
- 各OS紹介
- 各OSへの唯一の公式Web導線
- 新規登録案内
- ログイン案内
- ログイン済み利用者向けWebランチャー
- Web遷移前の前段判定
- お知らせ表示
- メンテナンス案内
- ポータル運営管理

Civilization Portal Site は、次を担わない。

- 新規登録正本
- 認証正本
- Civilization ID 発行
- 各OS内部ロジック
- 各OS内部権限制御
- 各OS内部データ正本

# ============================================================
# 3. Civilization 全体構造における位置づけ
# ============================================================

Civilization Portal Site の位置づけは次の通りとする。

- Civilization 全体の公開入口
- 外部向けWeb情報サイト
- 公式ナビゲーション正本
- ログイン済み利用者向けWeb入口提供主体
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
- 将来追加されるOS群

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

- 公開情報
- 世界観説明
- OSカタログ
- OS詳細説明
- ログイン導線
- 新規登録導線
- Webランチャー
- Web遷移前判定
- お知らせ
- メンテナンス案内
- 管理Web画面
- 監査補助

Civilization Portal Site が担わない責務は次の通りとする。

- 認証正本保持
- 新規登録正本保持
- Civilization ID 発行
- 各OS内部機能
- 各OS内部権限
- 各OS内部業務データ
- OS間直接遷移管理

# ============================================================
# 6. 利用者整理
# ============================================================

想定利用者は次の通りとする。

- 未ログイン訪問者
- ログイン済み Civilization 参加者
- organization
- organization 所属利用者
- ai_human
- ai_robot
- portal administrator
- portal operator
- portal editor
- audit viewer

# ============================================================
# 7. Webページ構成
# ============================================================

公開Webページは次の通りとする。

- トップ
- Civilization紹介
- OS一覧
- OS詳細
- お知らせ
- 利用案内
- ヘルプ
- 規約類

認証導線Webページは次の通りとする。

- ログイン案内
- 新規登録案内
- 認証復帰
- アクセス不可
- メンテナンス
- エラー案内

ログイン後Webページは次の通りとする。

- マイランチャー
- 最近使ったOS
- おすすめOS
- 利用者向けお知らせ

管理Web画面は次の通りとする。

- ダッシュボード
- OS掲載管理
- OS詳細管理
- お知らせ管理
- メンテナンス管理
- 特集管理
- 文言管理
- 画像管理
- 監査ログ閲覧

# ============================================================
# 8. 公開情報設計
# ============================================================

トップは、Civilization 全体の第一入口となる公開Webページとする。  
トップは、世界観要約、注目OS、ログイン導線、新規登録導線、お知らせ要約を提供する。

Civilization紹介は、Civilization とは何か、
Civilization ID とは何か、
主体種別、
CivilizationOS と各OSの関係を説明する公開Webページとする。

OS一覧は、各OSへの唯一の一覧入口となる公開Webページとする。  
OS一覧は、OSカードを用いた比較および発見の場とする。

OS詳細は、対象OSの目的、想定利用者、利用条件、注意事項を説明し、
対象OSのWeb入口へ進むかどうかの判断を支援する公開Webページとする。

利用案内は、初回利用者向けに、
登録、ログイン、OS利用までの流れを説明する公開Webページとする。

お知らせは、更新情報、重要告知、
メンテナンス情報、キャンペーン情報を案内する公開Webページとする。

# ============================================================
# 9. マイランチャー
# ============================================================

マイランチャーは、
ログイン済み利用者向けの主要OS利用開始入口となるWebページとする。

マイランチャーは情報カタログではなく、
利用者にとっての実用的なWeb入口とする。

マイランチャーは少なくとも次を表示する。

- 利用可能OS
- 最近使ったOS
- おすすめOS
- 利用不可OSと理由
- 利用者向けお知らせ

OS一覧が全体紹介を担うのに対し、
マイランチャーは個別利用者の利用開始中心入口を担う。

# ============================================================
# 10. OSカード定義
# ============================================================

OSカードは、
Civilization Portal Site 上で各OSを紹介し、
状態を示し、
詳細確認またはWeb入口への遷移へ導く標準表示単位とする。

OSカードの共通要素は次の通りとする。

- OS名
- 見出し
- 一言説明
- 主用途要約
- 利用条件要約
- 状態バッジ
- 詳細導線
- 遷移導線

OSカードは次の箇所で共通利用する。

- OS一覧
- OS詳細要約部
- マイランチャー
- 特集枠
- 管理画面プレビュー

# ============================================================
# 11. 遷移原則
# ============================================================

許可する遷移は次の通りとする。

- ポータル公開Webページから OS詳細
- ポータル公開Webページから OS Web入口への遷移要求
- マイランチャーから OS Web入口への遷移要求
- 各OSから Civilization Portal Site への戻り

条件付きで許可する遷移は次の通りとする。

- Civilization Portal Site から CivilizationOS ログインWebページ
- 認証切れ時の各OSから CivilizationOS ログインWebページ

禁止する遷移は次の通りとする。

- OSから別OSへの直接遷移

# ============================================================
# 12. OS Web入口遷移フロー
# ============================================================

利用者が「このOSへ進む」を押した際、
Civilization Portal Site は次を順に確認する。

1. 対象OSが公開状態か
2. 対象OSがメンテナンス中でないか
3. ログインが必要か
4. 利用者が現在ログイン済みか
5. 利用者の主体要約が条件を満たすか
6. 遷移先URLが有効か

判定結果は次のいずれかとする。

- launchable -> 対象OSのWeb入口へ遷移
- login_required -> CivilizationOS ログインWebページへ誘導
- denied -> アクセス不可案内
- maintenance -> メンテナンス案内
- error -> エラー案内

# ============================================================
# 13. 認証復帰原則
# ============================================================

未ログイン状態で各OS起動要求が発生した場合、
Civilization Portal Site は CivilizationOS のログインへ誘導する。

Civilization Portal Site は、
少なくとも次を保持して復帰文脈を維持する。

- requested_os_code
- return_target
- request_timestamp

認証成功後、
Civilization Portal Site は復帰文脈を解決し、
原則としてログイン前に要求された対象OS Web入口へ復帰させる。

# ============================================================
# 14. 権限制御原則
# ============================================================

Civilization Portal Site はWeb入口の権限制御を担う。

主な判定軸は次の通りとする。

- login status
- entity type
- affiliation summary
- account status
- contract tier
- beta eligibility
- age / legal / region flags
- publish status
- maintenance status

重要原則は次の通りとする。

- 表示可否と遷移可否は分離する。
- Civilization Portal Site は入口前段判定のみを行う。
- 各OS内部の詳細権限は各OSが別途判定する。

# ============================================================
# 15. 管理運用原則
# ============================================================

Civilization Portal Site 管理Web画面は次を担う。

- OS掲載状態管理
- OSカード文言管理
- 並び順管理
- 特集管理
- お知らせ管理
- メンテナンス管理
- 文言管理
- 画像管理
- 監査ログ閲覧

Civilization Portal Site 管理Web画面は次を担わない。

- 各OS内部設定
- 各OS内部権限管理
- CivilizationOS 認証正本管理

# ============================================================
# 16. データモデル概要
# ============================================================

主要論理テーブルは次の通りとする。

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

責務分離は次の通りとする。

- 固定OS定義
- ポータル掲載状態
- Web入口条件
- お知らせ
- 文言
- 画像
- メンテナンス
- ランチャー個人化
- 管理監査

Civilization Portal Site は、
認証正本、所属正本、契約正本、
各OS内部データを保持しない。

# ============================================================
# 17. API / 連携概要
# ============================================================

Civilization Portal Site 自前APIは次の通りとする。

- OS一覧
- OS詳細
- お知らせ
- 特集
- メンテナンス
- 文言
- 遷移判定
- 遷移準備
- マイランチャー
- 最近使ったOS
- おすすめOS
- 利用者向けお知らせ
- 管理API

CivilizationOS 参照APIは次の通りとする。

- session summary
- profile summary
- login URL
- signup URL
- logout

各OS連携原則は次の通りとする。

- Civilization Portal Site は許可済みWeb入口URLを用いる。
- Civilization Portal Site は最小限の遷移文脈のみ渡す。
- 各OSは自OS側でセッション再確認および内部権限確認を行う。

# ============================================================
# 18. Webサイトマップ概要
# ============================================================

公開領域は次の通りとする。

- /
- /civilization
- /os
- /os/{os_code}
- /notices
- /guide
- /help
- /terms
- /privacy
- /contact

認証導線領域は次の通りとする。

- /login
- /signup
- /auth/return
- /access-denied
- /maintenance
- /error

ログイン後領域は次の通りとする。

- /me/launcher
- /me/recent
- /me/recommended
- /me/notices

管理領域は次の通りとする。

- /admin
- /admin/os
- /admin/notices
- /admin/maintenance
- /admin/features
- /admin/assets
- /admin/copy
- /admin/audit

# ============================================================
# 19. 実装アーキテクチャ概要
# ============================================================

推奨レイヤは次の通りとする。

- Public Web Layer
- Member Launcher Layer
- Portal Application Layer
- Integration Layer
- Portal Data Layer
- Admin / Operations Layer

主要モジュールは次の通りとする。

- OS Catalog Service
- Launcher Service
- Launch Decision Service
- Civilization Session Adapter
- OS Launch Resolver
- Return Context Manager

# ============================================================
# 20. DB論理 schema 概要
# ============================================================

Civilization Portal Site の論理 schema は `portal` を採用する。

重要原則は次の通りとする。

- 固定OS定義と掲載状態を分離する。
- 表示状態とWeb入口条件を分離する。
- 管理監査と業務本文を分離する。
- ランチャー個人化と認証正本を分離する。

# ============================================================
# 21. API exact contract 概要
# ============================================================

Civilization Portal Site API は次に分かれる。

- 公開情報API
- CivilizationOS 認証参照API
- 遷移判定API
- ランチャーAPI
- 管理API

遷移判定API は少なくとも次を返せる必要がある。

- 遷移可能か
- ログインが必要か
- 拒否理由
- メンテ理由
- 次に取るべき行動
- return context token

# ============================================================
# 22. 画面項目表概要
# ============================================================

各Webページは次により定義する。

- 画面目的
- 表示項目
- 入力項目
- 操作項目
- 状態別表示
- 利用API
- 主な遷移

対象は次の通りとする。

- 公開Webページ
- 認証導線Webページ
- ログイン後Webページ
- 管理Web画面

# ============================================================
# 23. DB物理方針概要
# ============================================================

物理DB方針は次の通りとする。

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
# 24. exact column 定義概要
# ============================================================

exact column 定義は、
少なくとも次について固定済みとする。

- category master
- segment master
- os master
- asset
- os listing
- os launch rule
- notice
- feature slot
- copy
- maintenance
- personalized launcher state
- admin audit log

本設計は schema-definition level では implementation-ready である。  
ただし、実装自体はまだ開始しない。

# ============================================================
# 25. 現在状態
# ============================================================

Civilization Portal Site 設計の現在状態は次の通りとする。

- 実装前 canonical design 完了
- 実装未着手
- DDL未実行
- 本番投入未実施

本設計は、今後の実装時に参照される正本とする。

# ============================================================
# 26. 最終定義
# ============================================================

Civilization Portal Site は、
Civilization 全体の公開入口であり、
各OSへの唯一の公式Web導線を保持する正規ポータルである。

CivilizationOS は、
新規登録、認証、Civilization ID 発行の正本である。

Civilization Portal Site は、
公開説明、OS紹介、公式Web導線、
ログイン済み利用者向けWeb入口、
入口制御、ポータル運営管理を担う。

すべてのOS入口は Civilization Portal Site を経由しなければならない。  
OS間の直接遷移は許可しない。  
現時点では実装はまだ行わない。

# ============================================================
# 27. 詳細分割文書参照
# ============================================================

本統合文書の詳細は、次の分割文書群を参照する。

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



# ------------------------------------------------------------
# SOURCE 6
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/020.architecture/0200000_CIVILIZATION_PORTAL_SITE_ARCHITECTURE_OVERVIEW.md

# ============================================================
# CIVILIZATION PORTAL SITE ARCHITECTURE OVERVIEW
# ============================================================

status: canonical-design
layer: architecture
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Civilization Portal Site の architecture layer 概要を定義する。

# ============================================================
# 2. layer 役割
# ============================================================

architecture layer は次を扱う。

- システム全体構造
- Webページ構成
- 導線構造
- CivilizationOS との境界

# ============================================================
# 3. 主要文書
# ============================================================

- 020000_CIVILIZATION_PORTAL_SITE_ARCHITECTURE.md
- 020001_CIVILIZATION_PORTAL_SITE_SCREEN_ARCHITECTURE.md
- 020002_CIVILIZATION_PORTAL_SITE_NAVIGATION_ARCHITECTURE.md
- 020003_CIVILIZATION_PORTAL_SITE_CIVILIZATIONOS_BOUNDARY_ARCHITECTURE.md

# ============================================================
# 4. ルート正本参照
# ============================================================

本レイヤ文書を読む際の上位正本は次の通りとする。

- ../../000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- ../../000_CIVILIZATION_PORTAL_SITE_INDEX.md
- ../../00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

原則として、
レイヤ概要を確認した後に必要な個別文書を読み、
必要に応じて統合正本へ戻る。


# ------------------------------------------------------------
# SOURCE 7
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/020.architecture/0200000_CIVILIZATION_PORTAL_SITE_ARCHITECTURE_INDEX.md

# ============================================================
# CIVILIZATION PORTAL SITE ARCHITECTURE INDEX
# ============================================================

status: canonical-design
layer: architecture
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 推奨読順
# ============================================================

1. 020000_CIVILIZATION_PORTAL_SITE_ARCHITECTURE.md
2. 020001_CIVILIZATION_PORTAL_SITE_SCREEN_ARCHITECTURE.md
3. 020002_CIVILIZATION_PORTAL_SITE_NAVIGATION_ARCHITECTURE.md
4. 020003_CIVILIZATION_PORTAL_SITE_CIVILIZATIONOS_BOUNDARY_ARCHITECTURE.md

# ============================================================
# 2. 論点
# ============================================================

- 全体構造
- Webページ構成
- 導線構造
- CivilizationOS 境界

# ============================================================
# 4. ルート正本参照
# ============================================================

本レイヤ文書を読む際の上位正本は次の通りとする。

- ../../000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- ../../000_CIVILIZATION_PORTAL_SITE_INDEX.md
- ../../00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

原則として、
レイヤ概要を確認した後に必要な個別文書を読み、
必要に応じて統合正本へ戻る。


# ------------------------------------------------------------
# SOURCE 8
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/020.architecture/020000_CIVILIZATION_PORTAL_SITE_ARCHITECTURE.md

# ============================================================
# CIVILIZATION PORTAL SITE ARCHITECTURE
# ============================================================

status: canonical-design
layer: architecture
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Civilization Portal Site の全体アーキテクチャを定義する。

本書の目的は、
Portal Site のシステム定義、
Civilization 全体における位置づけ、
CivilizationOS および各OSとの境界、
主要Webページ群、
上位構造を固定することにある。

# ============================================================
# 2. システム定義
# ============================================================

Civilization Portal Site は、
Civilization 全体の公開情報を提供する
Webサイト / Webアプリであり、
各OSへの唯一の公式Web入口を担うポータルシステムとする。

Portal Site は次を担う。

- 公開情報提供
- Civilization 世界観説明
- 各OS紹介
- 各OSへの唯一の公式Web導線
- 新規登録案内
- ログイン案内
- ログイン済み利用者向けWebランチャー
- Web遷移前の前段判定
- お知らせ表示
- メンテナンス案内
- ポータル運営管理

# ============================================================
# 3. Civilization 全体における位置づけ
# ============================================================

Civilization Portal Site の位置づけは次の通りとする。

- Civilization 全体の公開入口
- 外部向けWeb情報サイト
- 公式ナビゲーション正本
- ログイン済み利用者向けWeb入口提供主体
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
- 将来追加されるOS群

各OSは Civilization Portal Site からWeb遷移によって入る利用先であり、
OS間の直接リンクは許可しない。

# ============================================================
# 4. 主要Webページ群
# ============================================================

公開Webページ:
- トップ
- Civilization紹介
- OS一覧
- OS詳細
- お知らせ
- 利用案内
- ヘルプ
- 規約類

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

管理Web画面:
- ダッシュボード
- OS掲載管理
- OS詳細管理
- お知らせ管理
- メンテナンス管理
- 特集管理
- 文言管理
- 画像管理
- 監査ログ閲覧

# ============================================================
# 5. 上位アーキテクチャ原則
# ============================================================

- Portal Site は公開Web入口を担う。
- 認証正本は CivilizationOS とする。
- 各OSへのリンクは Portal Site のみが保持する。
- Portal Site は入口前段判定のみを担う。
- 各OS内部の詳細権限制御は各OSが担う。
- OS間の直接リンクは禁止する。

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


# ------------------------------------------------------------
# SOURCE 9
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/020.architecture/020001_CIVILIZATION_PORTAL_SITE_SCREEN_ARCHITECTURE.md

# ============================================================
# CIVILIZATION PORTAL SITE SCREEN ARCHITECTURE
# ============================================================

status: canonical-design
layer: architecture
domain: screen-architecture
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Civilization Portal Site のWebページ構成を定義する。

# ============================================================
# 2. 公開Webページ
# ============================================================

- トップ
- Civilization紹介
- OS一覧
- OS詳細
- お知らせ
- 利用案内
- ヘルプ
- 規約類

# ============================================================
# 3. 認証導線Webページ
# ============================================================

- ログイン案内
- 新規登録案内
- 認証復帰
- アクセス不可
- メンテナンス
- エラー案内

# ============================================================
# 4. ログイン後Webページ
# ============================================================

- マイランチャー
- 最近使ったOS
- おすすめOS
- 利用者向けお知らせ

# ============================================================
# 5. 管理Web画面
# ============================================================

- ダッシュボード
- OS掲載管理
- OS詳細管理
- お知らせ管理
- メンテナンス管理
- 特集管理
- 文言管理
- 画像管理
- 監査ログ閲覧

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


# ------------------------------------------------------------
# SOURCE 10
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/020.architecture/020002_CIVILIZATION_PORTAL_SITE_NAVIGATION_ARCHITECTURE.md

# ============================================================
# CIVILIZATION PORTAL SITE NAVIGATION ARCHITECTURE
# ============================================================

status: canonical-design
layer: architecture
domain: navigation-architecture
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Civilization Portal Site を中心とした導線構造を定義する。

# ============================================================
# 2. 導線原則
# ============================================================

- 各OSへのリンクは Civilization Portal Site のみが保持する。
- OS間の直接リンクは禁止する。
- 未ログイン時は CivilizationOS のWebログインページへ誘導する。
- 認証成功後は原則として要求元の対象OS Web入口へ復帰させる。
- 各OSから Portal Site への戻りは許可する。

# ============================================================
# 3. 許可する遷移
# ============================================================

- ポータル公開Webページから OS詳細
- ポータル公開Webページから OS Web入口への遷移要求
- マイランチャーから OS Web入口への遷移要求
- 各OSから Civilization Portal Site への戻り

# ============================================================
# 4. 条件付きで許可する遷移
# ============================================================

- Civilization Portal Site から CivilizationOS ログインWebページ
- 認証切れ時の各OSから CivilizationOS ログインWebページ

# ============================================================
# 5. 禁止する遷移
# ============================================================

- OSから別OSへの直接遷移

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


# ------------------------------------------------------------
# SOURCE 11
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/020.architecture/020003_CIVILIZATION_PORTAL_SITE_CIVILIZATIONOS_BOUNDARY_ARCHITECTURE.md

# ============================================================
# CIVILIZATION PORTAL SITE CIVILIZATIONOS BOUNDARY ARCHITECTURE
# ============================================================

status: canonical-design
layer: architecture
domain: civilizationos-boundary
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Civilization Portal Site と CivilizationOS の責務境界を定義する。

# ============================================================
# 2. Civilization Portal Site が担うもの
# ============================================================

- 公開情報
- 世界観説明
- OSカタログ
- OS詳細説明
- ログイン導線
- 新規登録導線
- Webランチャー
- Web遷移前判定
- お知らせ
- メンテナンス案内
- 管理Web画面
- 監査補助

# ============================================================
# 3. CivilizationOS が担うもの
# ============================================================

- 新規登録正本
- 認証正本
- Civilization ID 発行正本
- ログイン後の文明シミュレーション世界本体

# ============================================================
# 4. 境界原則
# ============================================================

- Portal Site は認証正本を持たない。
- 認証は CivilizationOS のみが担う。
- Portal Site は認証結果を参照して入口制御を行う。
- CivilizationOS は Portal Site の代替導線とはならない。

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


# ------------------------------------------------------------
# SOURCE 12
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/030.model/0300000_CIVILIZATION_PORTAL_SITE_MODEL_OVERVIEW.md

# ============================================================
# CIVILIZATION PORTAL SITE MODEL OVERVIEW
# ============================================================

status: canonical-design
layer: model
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Civilization Portal Site の model layer 概要を定義する。

# ============================================================
# 2. layer 役割
# ============================================================

model layer は次を扱う。

- ドメイン要素
- OSカード
- 入口権限制御
- データモデル

# ============================================================
# 3. 主要文書
# ============================================================

- 030000_CIVILIZATION_PORTAL_SITE_DOMAIN_MODEL.md
- 030001_CIVILIZATION_PORTAL_SITE_OS_CARD_MODEL.md
- 030002_CIVILIZATION_PORTAL_SITE_PERMISSION_MODEL.md
- 030003_CIVILIZATION_PORTAL_SITE_DATA_MODEL.md

# ============================================================
# 4. ルート正本参照
# ============================================================

本レイヤ文書を読む際の上位正本は次の通りとする。

- ../../000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- ../../000_CIVILIZATION_PORTAL_SITE_INDEX.md
- ../../00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

原則として、
レイヤ概要を確認した後に必要な個別文書を読み、
必要に応じて統合正本へ戻る。


# ------------------------------------------------------------
# SOURCE 13
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/030.model/0300000_CIVILIZATION_PORTAL_SITE_MODEL_INDEX.md

# ============================================================
# CIVILIZATION PORTAL SITE MODEL INDEX
# ============================================================

status: canonical-design
layer: model
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 推奨読順
# ============================================================

1. 030000_CIVILIZATION_PORTAL_SITE_DOMAIN_MODEL.md
2. 030001_CIVILIZATION_PORTAL_SITE_OS_CARD_MODEL.md
3. 030002_CIVILIZATION_PORTAL_SITE_PERMISSION_MODEL.md
4. 030003_CIVILIZATION_PORTAL_SITE_DATA_MODEL.md

# ============================================================
# 2. 論点
# ============================================================

- ドメイン要素
- OSカード
- 権限制御
- データモデル

# ============================================================
# 4. ルート正本参照
# ============================================================

本レイヤ文書を読む際の上位正本は次の通りとする。

- ../../000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- ../../000_CIVILIZATION_PORTAL_SITE_INDEX.md
- ../../00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

原則として、
レイヤ概要を確認した後に必要な個別文書を読み、
必要に応じて統合正本へ戻る。


# ------------------------------------------------------------
# SOURCE 14
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/030.model/030000_CIVILIZATION_PORTAL_SITE_DOMAIN_MODEL.md

# ============================================================
# CIVILIZATION PORTAL SITE DOMAIN MODEL
# ============================================================

status: canonical-design
layer: model
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Civilization Portal Site の主要ドメイン要素を定義する。

# ============================================================
# 2. 主要ドメイン要素
# ============================================================

- Portal Site
- OS
- OS Card
- Launch Rule
- Notice
- Feature Slot
- Maintenance
- Copy
- Asset
- Personalized Launcher State
- Admin Audit Log

# ============================================================
# 3. ドメイン原則
# ============================================================

- 固定OS定義と掲載状態を分離する。
- 表示状態とWeb入口条件を分離する。
- 管理監査と業務本文を分離する。
- ランチャー個人化と認証正本を分離する。

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


# ------------------------------------------------------------
# SOURCE 15
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/030.model/030001_CIVILIZATION_PORTAL_SITE_OS_CARD_MODEL.md

# ============================================================
# CIVILIZATION PORTAL SITE OS CARD MODEL
# ============================================================

status: canonical-design
layer: model
domain: os-card
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、OSカードのモデルを定義する。

# ============================================================
# 2. OSカード定義
# ============================================================

OSカードは、
Civilization Portal Site 上で各OSを紹介し、
状態を示し、
詳細確認またはWeb入口への遷移へ導く標準表示単位とする。

# ============================================================
# 3. 共通要素
# ============================================================

- OS名
- 見出し
- 一言説明
- 主用途要約
- 利用条件要約
- 状態バッジ
- 詳細導線
- 遷移導線

# ============================================================
# 4. 利用箇所
# ============================================================

- OS一覧
- OS詳細要約部
- マイランチャー
- 特集枠
- 管理画面プレビュー

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


# ------------------------------------------------------------
# SOURCE 16
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/030.model/030002_CIVILIZATION_PORTAL_SITE_PERMISSION_MODEL.md

# ============================================================
# CIVILIZATION PORTAL SITE PERMISSION MODEL
# ============================================================

status: canonical-design
layer: model
domain: permission
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site の入口権限制御モデルを定義する。

# ============================================================
# 2. 判定軸
# ============================================================

- login status
- entity type
- affiliation summary
- account status
- contract tier
- beta eligibility
- age / legal / region flags
- publish status
- maintenance status

# ============================================================
# 3. 重要原則
# ============================================================

- 表示可否と遷移可否は分離する。
- Portal Site は入口前段判定のみを行う。
- 各OS内部の詳細権限は各OSが別途判定する。

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


# ------------------------------------------------------------
# SOURCE 17
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/030.model/030003_CIVILIZATION_PORTAL_SITE_DATA_MODEL.md

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


# ------------------------------------------------------------
# SOURCE 18
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/050.flow/0500000_CIVILIZATION_PORTAL_SITE_FLOW_OVERVIEW.md

# ============================================================
# CIVILIZATION PORTAL SITE FLOW OVERVIEW
# ============================================================

status: canonical-design
layer: flow
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Civilization Portal Site の flow layer 概要を定義する。

# ============================================================
# 2. layer 役割
# ============================================================

flow layer は次を扱う。

- ログイン導線
- OS Web入口遷移
- 認証復帰
- アクセス拒否
- メンテナンス導線

# ============================================================
# 3. 主要文書
# ============================================================

- 050000_CIVILIZATION_PORTAL_SITE_LOGIN_FLOW.md
- 050001_CIVILIZATION_PORTAL_SITE_OS_LAUNCH_FLOW.md
- 050002_CIVILIZATION_PORTAL_SITE_AUTH_RETURN_FLOW.md
- 050003_CIVILIZATION_PORTAL_SITE_ACCESS_DENIED_FLOW.md
- 050004_CIVILIZATION_PORTAL_SITE_MAINTENANCE_FLOW.md

# ============================================================
# 4. ルート正本参照
# ============================================================

本レイヤ文書を読む際の上位正本は次の通りとする。

- ../../000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- ../../000_CIVILIZATION_PORTAL_SITE_INDEX.md
- ../../00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

原則として、
レイヤ概要を確認した後に必要な個別文書を読み、
必要に応じて統合正本へ戻る。


# ------------------------------------------------------------
# SOURCE 19
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/050.flow/0500000_CIVILIZATION_PORTAL_SITE_FLOW_INDEX.md

# ============================================================
# CIVILIZATION PORTAL SITE FLOW INDEX
# ============================================================

status: canonical-design
layer: flow
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 推奨読順
# ============================================================

1. 050000_CIVILIZATION_PORTAL_SITE_LOGIN_FLOW.md
2. 050001_CIVILIZATION_PORTAL_SITE_OS_LAUNCH_FLOW.md
3. 050002_CIVILIZATION_PORTAL_SITE_AUTH_RETURN_FLOW.md
4. 050003_CIVILIZATION_PORTAL_SITE_ACCESS_DENIED_FLOW.md
5. 050004_CIVILIZATION_PORTAL_SITE_MAINTENANCE_FLOW.md

# ============================================================
# 2. 論点
# ============================================================

- ログイン導線
- OS遷移
- 認証復帰
- アクセス拒否
- メンテナンス

# ============================================================
# 4. ルート正本参照
# ============================================================

本レイヤ文書を読む際の上位正本は次の通りとする。

- ../../000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- ../../000_CIVILIZATION_PORTAL_SITE_INDEX.md
- ../../00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

原則として、
レイヤ概要を確認した後に必要な個別文書を読み、
必要に応じて統合正本へ戻る。


# ------------------------------------------------------------
# SOURCE 20
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/050.flow/050000_CIVILIZATION_PORTAL_SITE_LOGIN_FLOW.md

# ============================================================
# CIVILIZATION PORTAL SITE LOGIN FLOW
# ============================================================

status: canonical-design
layer: flow
domain: login-flow
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site におけるログイン要求フローを定義する。

# ============================================================
# 2. フロー
# ============================================================

1. 利用者が対象OSへの遷移を要求する。
2. Portal Site はログイン要否を確認する。
3. 未ログインであれば CivilizationOS のWebログインページへ誘導する。
4. 認証成功後、復帰文脈に基づき対象OS Web入口へ戻す。

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


# ------------------------------------------------------------
# SOURCE 21
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/050.flow/050001_CIVILIZATION_PORTAL_SITE_OS_LAUNCH_FLOW.md

# ============================================================
# CIVILIZATION PORTAL SITE OS LAUNCH FLOW
# ============================================================

status: canonical-design
layer: flow
domain: os-launch-flow
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、対象OS Web入口への遷移フローを定義する。

# ============================================================
# 2. フロー
# ============================================================

1. 利用者が「このOSへ進む」を押す。
2. Portal Site は公開状態を確認する。
3. Portal Site はメンテナンス状態を確認する。
4. Portal Site はログイン要否を確認する。
5. Portal Site は主体要約条件を確認する。
6. Portal Site は遷移先URL有効性を確認する。
7. 判定結果に応じて対象OS / ログイン / アクセス不可 / メンテナンス / エラーへ遷移する。

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


# ------------------------------------------------------------
# SOURCE 22
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/050.flow/050002_CIVILIZATION_PORTAL_SITE_AUTH_RETURN_FLOW.md

# ============================================================
# CIVILIZATION PORTAL SITE AUTH RETURN FLOW
# ============================================================

status: canonical-design
layer: flow
domain: auth-return-flow
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、認証後復帰フローを定義する。

# ============================================================
# 2. 復帰文脈
# ============================================================

Portal Site は、少なくとも次を保持して復帰文脈を維持する。

- requested_os_code
- return_target
- request_timestamp

# ============================================================
# 3. フロー
# ============================================================

1. 未ログインでOS遷移要求が発生する。
2. Portal Site は復帰文脈を保存する。
3. CivilizationOS ログイン完了後、Portal Site は復帰文脈を解決する。
4. 原則として要求元の対象OS Web入口へ復帰させる。

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


# ------------------------------------------------------------
# SOURCE 23
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/050.flow/050003_CIVILIZATION_PORTAL_SITE_ACCESS_DENIED_FLOW.md

# ============================================================
# CIVILIZATION PORTAL SITE ACCESS DENIED FLOW
# ============================================================

status: canonical-design
layer: flow
domain: access-denied-flow
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、条件未達時のアクセス拒否フローを定義する。

# ============================================================
# 2. フロー
# ============================================================

1. Portal Site が主体要約条件を判定する。
2. 条件未達であればアクセス不可案内へ遷移する。
3. 利用不可理由と代替導線を提示する。

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


# ------------------------------------------------------------
# SOURCE 24
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/050.flow/050004_CIVILIZATION_PORTAL_SITE_MAINTENANCE_FLOW.md

# ============================================================
# CIVILIZATION PORTAL SITE MAINTENANCE FLOW
# ============================================================

status: canonical-design
layer: flow
domain: maintenance-flow
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、メンテナンス時の遷移フローを定義する。

# ============================================================
# 2. フロー
# ============================================================

1. Portal Site が対象OSまたはポータル自体のメンテナンス状態を判定する。
2. メンテナンス中であれば対象OSへの遷移を停止する。
3. メンテナンス案内へ遷移する。

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


# ------------------------------------------------------------
# SOURCE 25
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/060.integration/0600000_CIVILIZATION_PORTAL_SITE_INTEGRATION_OVERVIEW.md

# ============================================================
# CIVILIZATION PORTAL SITE INTEGRATION OVERVIEW
# ============================================================

status: canonical-design
layer: integration
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Civilization Portal Site の integration layer 概要を定義する。

# ============================================================
# 2. layer 役割
# ============================================================

integration layer は次を扱う。

- CivilizationOS 認証参照
- 各OS Web入口連携
- 復帰文脈
- API区分

# ============================================================
# 3. 主要文書
# ============================================================

- 060000_CIVILIZATION_PORTAL_SITE_CIVILIZATION_AUTH_INTEGRATION.md
- 060001_CIVILIZATION_PORTAL_SITE_OS_LAUNCH_INTEGRATION.md
- 060002_CIVILIZATION_PORTAL_SITE_RETURN_CONTEXT_INTEGRATION.md
- 060003_CIVILIZATION_PORTAL_SITE_API_CONTRACT_SUMMARY.md

# ============================================================
# 4. ルート正本参照
# ============================================================

本レイヤ文書を読む際の上位正本は次の通りとする。

- ../../000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- ../../000_CIVILIZATION_PORTAL_SITE_INDEX.md
- ../../00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

原則として、
レイヤ概要を確認した後に必要な個別文書を読み、
必要に応じて統合正本へ戻る。


# ------------------------------------------------------------
# SOURCE 26
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/060.integration/0600000_CIVILIZATION_PORTAL_SITE_INTEGRATION_INDEX.md

# ============================================================
# CIVILIZATION PORTAL SITE INTEGRATION INDEX
# ============================================================

status: canonical-design
layer: integration
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 推奨読順
# ============================================================

1. 060000_CIVILIZATION_PORTAL_SITE_CIVILIZATION_AUTH_INTEGRATION.md
2. 060001_CIVILIZATION_PORTAL_SITE_OS_LAUNCH_INTEGRATION.md
3. 060002_CIVILIZATION_PORTAL_SITE_RETURN_CONTEXT_INTEGRATION.md
4. 060003_CIVILIZATION_PORTAL_SITE_API_CONTRACT_SUMMARY.md

# ============================================================
# 2. 論点
# ============================================================

- 認証参照
- OS連携
- 復帰文脈
- API区分

# ============================================================
# 4. ルート正本参照
# ============================================================

本レイヤ文書を読む際の上位正本は次の通りとする。

- ../../000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- ../../000_CIVILIZATION_PORTAL_SITE_INDEX.md
- ../../00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

原則として、
レイヤ概要を確認した後に必要な個別文書を読み、
必要に応じて統合正本へ戻る。


# ------------------------------------------------------------
# SOURCE 27
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/060.integration/060000_CIVILIZATION_PORTAL_SITE_CIVILIZATION_AUTH_INTEGRATION.md

# ============================================================
# CIVILIZATION PORTAL SITE CIVILIZATION AUTH INTEGRATION
# ============================================================

status: canonical-design
layer: integration
domain: civilization-auth
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site と CivilizationOS 認証参照の統合原則を定義する。

# ============================================================
# 2. 参照対象
# ============================================================

- session summary
- profile summary
- login URL
- signup URL
- logout

# ============================================================
# 3. 統合原則
# ============================================================

- Portal Site は認証正本を持たない。
- 認証は CivilizationOS のみが担う。
- Portal Site は認証結果を参照して入口制御を行う。

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


# ------------------------------------------------------------
# SOURCE 28
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/060.integration/060001_CIVILIZATION_PORTAL_SITE_OS_LAUNCH_INTEGRATION.md

# ============================================================
# CIVILIZATION PORTAL SITE OS LAUNCH INTEGRATION
# ============================================================

status: canonical-design
layer: integration
domain: os-launch
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site と各OS Web入口との統合原則を定義する。

# ============================================================
# 2. 統合原則
# ============================================================

- Portal Site は許可済みWeb入口URLを用いる。
- Portal Site は最小限の遷移文脈のみ渡す。
- 各OSは自OS側でセッション再確認および内部権限確認を行う。
- OS間の直接リンクは許可しない。

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


# ------------------------------------------------------------
# SOURCE 29
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/060.integration/060002_CIVILIZATION_PORTAL_SITE_RETURN_CONTEXT_INTEGRATION.md

# ============================================================
# CIVILIZATION PORTAL SITE RETURN CONTEXT INTEGRATION
# ============================================================

status: canonical-design
layer: integration
domain: return-context
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、認証復帰文脈の統合原則を定義する。

# ============================================================
# 2. 保持項目
# ============================================================

- requested_os_code
- return_target
- request_timestamp

# ============================================================
# 3. 原則
# ============================================================

- 未ログイン遷移要求時は復帰文脈を保存する。
- 認証後は復帰文脈を解決する。
- 原則として元の対象OS Web入口へ戻す。

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


# ------------------------------------------------------------
# SOURCE 30
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/060.integration/060003_CIVILIZATION_PORTAL_SITE_API_CONTRACT_SUMMARY.md

# ============================================================
# CIVILIZATION PORTAL SITE API CONTRACT SUMMARY
# ============================================================

status: canonical-design
layer: integration
domain: api-contract
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site のAPI区分を概要レベルで定義する。

# ============================================================
# 2. API区分
# ============================================================

- 公開情報API
- CivilizationOS 認証参照API
- 遷移判定API
- ランチャーAPI
- 管理API

# ============================================================
# 3. 遷移判定API 原則
# ============================================================

遷移判定API は少なくとも次を返せる必要がある。

- 遷移可能か
- ログインが必要か
- 拒否理由
- メンテ理由
- 次に取るべき行動
- return context token

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


# ------------------------------------------------------------
# SOURCE 31
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/070.operations/0700000_CIVILIZATION_PORTAL_SITE_OPERATIONS_OVERVIEW.md

# ============================================================
# CIVILIZATION PORTAL SITE OPERATIONS OVERVIEW
# ============================================================

status: canonical-design
layer: operations
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Civilization Portal Site の operations layer 概要を定義する。

# ============================================================
# 2. layer 役割
# ============================================================

operations layer は次を扱う。

- 管理運用
- お知らせ運用
- メンテ運用
- 監査運用

# ============================================================
# 3. 主要文書
# ============================================================

- 070000_CIVILIZATION_PORTAL_SITE_ADMIN_OPERATIONS.md
- 070001_CIVILIZATION_PORTAL_SITE_NOTICE_OPERATIONS.md
- 070002_CIVILIZATION_PORTAL_SITE_MAINTENANCE_OPERATIONS.md
- 070003_CIVILIZATION_PORTAL_SITE_AUDIT_OPERATIONS.md

# ============================================================
# 4. ルート正本参照
# ============================================================

本レイヤ文書を読む際の上位正本は次の通りとする。

- ../../000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- ../../000_CIVILIZATION_PORTAL_SITE_INDEX.md
- ../../00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

原則として、
レイヤ概要を確認した後に必要な個別文書を読み、
必要に応じて統合正本へ戻る。


# ------------------------------------------------------------
# SOURCE 32
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/070.operations/0700000_CIVILIZATION_PORTAL_SITE_OPERATIONS_INDEX.md

# ============================================================
# CIVILIZATION PORTAL SITE OPERATIONS INDEX
# ============================================================

status: canonical-design
layer: operations
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 推奨読順
# ============================================================

1. 070000_CIVILIZATION_PORTAL_SITE_ADMIN_OPERATIONS.md
2. 070001_CIVILIZATION_PORTAL_SITE_NOTICE_OPERATIONS.md
3. 070002_CIVILIZATION_PORTAL_SITE_MAINTENANCE_OPERATIONS.md
4. 070003_CIVILIZATION_PORTAL_SITE_AUDIT_OPERATIONS.md

# ============================================================
# 2. 論点
# ============================================================

- 管理運用
- お知らせ
- メンテ
- 監査

# ============================================================
# 4. ルート正本参照
# ============================================================

本レイヤ文書を読む際の上位正本は次の通りとする。

- ../../000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- ../../000_CIVILIZATION_PORTAL_SITE_INDEX.md
- ../../00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

原則として、
レイヤ概要を確認した後に必要な個別文書を読み、
必要に応じて統合正本へ戻る。


# ------------------------------------------------------------
# SOURCE 33
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/070.operations/070000_CIVILIZATION_PORTAL_SITE_ADMIN_OPERATIONS.md

# ============================================================
# CIVILIZATION PORTAL SITE ADMIN OPERATIONS
# ============================================================

status: canonical-design
layer: operations
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site 管理Web画面の運用責務を定義する。

# ============================================================
# 2. 管理対象
# ============================================================

- OS掲載状態管理
- OSカード文言管理
- 並び順管理
- 特集管理
- お知らせ管理
- メンテナンス管理
- 文言管理
- 画像管理
- 監査ログ閲覧

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


# ------------------------------------------------------------
# SOURCE 34
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/070.operations/070001_CIVILIZATION_PORTAL_SITE_NOTICE_OPERATIONS.md

# ============================================================
# CIVILIZATION PORTAL SITE NOTICE OPERATIONS
# ============================================================

status: canonical-design
layer: operations
domain: notice-operations
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、お知らせ運用を定義する。

# ============================================================
# 2. 運用対象
# ============================================================

- 更新情報
- 重要告知
- メンテナンス情報
- キャンペーン情報

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


# ------------------------------------------------------------
# SOURCE 35
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/070.operations/070002_CIVILIZATION_PORTAL_SITE_MAINTENANCE_OPERATIONS.md

# ============================================================
# CIVILIZATION PORTAL SITE MAINTENANCE OPERATIONS
# ============================================================

status: canonical-design
layer: operations
domain: maintenance-operations
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site および各OSに対するメンテナンス運用を定義する。

# ============================================================
# 2. 運用原則
# ============================================================

- メンテナンス中は対象OSへの遷移を停止する。
- Portal Site はメンテナンス案内を表示する。
- メンテナンス状態は運営管理で即時反映可能とする。

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


# ------------------------------------------------------------
# SOURCE 36
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/070.operations/070003_CIVILIZATION_PORTAL_SITE_AUDIT_OPERATIONS.md

# ============================================================
# CIVILIZATION PORTAL SITE AUDIT OPERATIONS
# ============================================================

status: canonical-design
layer: operations
domain: audit-operations
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site の監査運用を定義する。

# ============================================================
# 2. 監査対象
# ============================================================

- OS掲載変更
- 特集変更
- お知らせ変更
- メンテナンス変更
- 文言変更
- 画像変更

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


# ------------------------------------------------------------
# SOURCE 37
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/080.policy/0800000_CIVILIZATION_PORTAL_SITE_POLICY_OVERVIEW.md

# ============================================================
# CIVILIZATION PORTAL SITE POLICY OVERVIEW
# ============================================================

status: canonical-design
layer: policy
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Civilization Portal Site の policy layer 概要を定義する。

# ============================================================
# 2. layer 役割
# ============================================================

policy layer は次を扱う。

- 入口原則
- OSリンク原則
- 権限制御原則
- 公開情報原則

# ============================================================
# 3. 主要文書
# ============================================================

- 080000_CIVILIZATION_PORTAL_SITE_ENTRY_POLICY.md
- 080001_CIVILIZATION_PORTAL_SITE_OS_LINK_POLICY.md
- 080002_CIVILIZATION_PORTAL_SITE_PERMISSION_POLICY.md
- 080003_CIVILIZATION_PORTAL_SITE_PUBLIC_INFORMATION_POLICY.md

# ============================================================
# 4. ルート正本参照
# ============================================================

本レイヤ文書を読む際の上位正本は次の通りとする。

- ../../000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- ../../000_CIVILIZATION_PORTAL_SITE_INDEX.md
- ../../00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

原則として、
レイヤ概要を確認した後に必要な個別文書を読み、
必要に応じて統合正本へ戻る。


# ------------------------------------------------------------
# SOURCE 38
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/080.policy/0800000_CIVILIZATION_PORTAL_SITE_POLICY_INDEX.md

# ============================================================
# CIVILIZATION PORTAL SITE POLICY INDEX
# ============================================================

status: canonical-design
layer: policy
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 推奨読順
# ============================================================

1. 080000_CIVILIZATION_PORTAL_SITE_ENTRY_POLICY.md
2. 080001_CIVILIZATION_PORTAL_SITE_OS_LINK_POLICY.md
3. 080002_CIVILIZATION_PORTAL_SITE_PERMISSION_POLICY.md
4. 080003_CIVILIZATION_PORTAL_SITE_PUBLIC_INFORMATION_POLICY.md

# ============================================================
# 2. 論点
# ============================================================

- 入口原則
- OSリンク原則
- 権限制御原則
- 公開情報原則

# ============================================================
# 4. ルート正本参照
# ============================================================

本レイヤ文書を読む際の上位正本は次の通りとする。

- ../../000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- ../../000_CIVILIZATION_PORTAL_SITE_INDEX.md
- ../../00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

原則として、
レイヤ概要を確認した後に必要な個別文書を読み、
必要に応じて統合正本へ戻る。


# ------------------------------------------------------------
# SOURCE 39
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/080.policy/080000_CIVILIZATION_PORTAL_SITE_ENTRY_POLICY.md

# ============================================================
# CIVILIZATION PORTAL SITE ENTRY POLICY
# ============================================================

status: canonical-design
layer: policy
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site の入口原則を定義する。

# ============================================================
# 2. 入口原則
# ============================================================

- 各OSへのリンクは Civilization Portal Site のみが保持する。
- すべてのOS入口は Civilization Portal Site を経由しなければならない。
- 未ログイン時は CivilizationOS のWebログインページへ誘導する。

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


# ------------------------------------------------------------
# SOURCE 40
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/080.policy/080001_CIVILIZATION_PORTAL_SITE_OS_LINK_POLICY.md

# ============================================================
# CIVILIZATION PORTAL SITE OS LINK POLICY
# ============================================================

status: canonical-design
layer: policy
domain: os-link-policy
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、OS間リンク原則を定義する。

# ============================================================
# 2. 原則
# ============================================================

- OS間の直接リンクは禁止する。
- 各OSから Civilization Portal Site への戻りは許可する。
- 認証切れ時の CivilizationOS ログインページへの遷移は条件付きで許可する。

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


# ------------------------------------------------------------
# SOURCE 41
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/080.policy/080002_CIVILIZATION_PORTAL_SITE_PERMISSION_POLICY.md

# ============================================================
# CIVILIZATION PORTAL SITE PERMISSION POLICY
# ============================================================

status: canonical-design
layer: policy
domain: permission-policy
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site の入口権限制御原則を定義する。

# ============================================================
# 2. 原則
# ============================================================

- 表示可否と遷移可否は分離する。
- Portal Site は入口前段判定のみを行う。
- 各OS内部の詳細権限は各OSが別途判定する。

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


# ------------------------------------------------------------
# SOURCE 42
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/080.policy/080003_CIVILIZATION_PORTAL_SITE_PUBLIC_INFORMATION_POLICY.md

# ============================================================
# CIVILIZATION PORTAL SITE PUBLIC INFORMATION POLICY
# ============================================================

status: canonical-design
layer: policy
domain: public-information-policy
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site の公開情報原則を定義する。

# ============================================================
# 2. 原則
# ============================================================

- Portal Site は Civilization 全体の公開情報を提供する。
- 公開情報は各OSの公式Web入口判断を支援する。
- Portal Site は公開案内と入口導線に責務を限定する。

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


# ------------------------------------------------------------
# SOURCE 43
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/120.implementation-ready/1200000_CIVILIZATION_PORTAL_SITE_IMPLEMENTATION_READY_OVERVIEW.md

# ============================================================
# CIVILIZATION PORTAL SITE IMPLEMENTATION READY OVERVIEW
# ============================================================

status: canonical-design
layer: implementation-ready
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Civilization Portal Site の implementation-ready layer 概要を定義する。

# ============================================================
# 2. layer 役割
# ============================================================

implementation-ready layer は次を扱う。

- 画面項目表
- API exact contract
- DB論理 schema
- DB物理方針
- exact column 定義

# ============================================================
# 3. 主要文書
# ============================================================

- 120000_CIVILIZATION_PORTAL_SITE_SCREEN_FIELD_SPEC.md
- 120001_CIVILIZATION_PORTAL_SITE_API_EXACT_CONTRACT.md
- 120002_CIVILIZATION_PORTAL_SITE_DB_LOGICAL_SCHEMA.md
- 120003_CIVILIZATION_PORTAL_SITE_DB_PHYSICAL_GUIDELINE.md
- 120004_CIVILIZATION_PORTAL_SITE_EXACT_COLUMN_DEFINITION.md

# ============================================================
# 4. ルート正本参照
# ============================================================

本レイヤ文書を読む際の上位正本は次の通りとする。

- ../../000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- ../../000_CIVILIZATION_PORTAL_SITE_INDEX.md
- ../../00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

原則として、
レイヤ概要を確認した後に必要な個別文書を読み、
必要に応じて統合正本へ戻る。


# ------------------------------------------------------------
# SOURCE 44
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/120.implementation-ready/1200000_CIVILIZATION_PORTAL_SITE_IMPLEMENTATION_READY_INDEX.md

# ============================================================
# CIVILIZATION PORTAL SITE IMPLEMENTATION READY INDEX
# ============================================================

status: canonical-design
layer: implementation-ready
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 推奨読順
# ============================================================

1. 120000_CIVILIZATION_PORTAL_SITE_SCREEN_FIELD_SPEC.md
2. 120001_CIVILIZATION_PORTAL_SITE_API_EXACT_CONTRACT.md
3. 120002_CIVILIZATION_PORTAL_SITE_DB_LOGICAL_SCHEMA.md
4. 120003_CIVILIZATION_PORTAL_SITE_DB_PHYSICAL_GUIDELINE.md
5. 120004_CIVILIZATION_PORTAL_SITE_EXACT_COLUMN_DEFINITION.md

# ============================================================
# 2. 論点
# ============================================================

- 画面項目表
- API exact contract
- DB論理 schema
- DB物理方針
- exact column 定義

# ============================================================
# 4. ルート正本参照
# ============================================================

本レイヤ文書を読む際の上位正本は次の通りとする。

- ../../000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- ../../000_CIVILIZATION_PORTAL_SITE_INDEX.md
- ../../00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

原則として、
レイヤ概要を確認した後に必要な個別文書を読み、
必要に応じて統合正本へ戻る。


# ------------------------------------------------------------
# SOURCE 45
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/120.implementation-ready/120000_CIVILIZATION_PORTAL_SITE_SCREEN_FIELD_SPEC.md

# ============================================================
# CIVILIZATION PORTAL SITE SCREEN FIELD SPEC
# ============================================================

status: canonical-design
layer: implementation-ready
domain: screen-field-spec
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、各Webページの項目定義の参照入口である。

# ============================================================
# 2. 定義対象
# ============================================================

- 公開Webページ
- 認証導線Webページ
- ログイン後Webページ
- 管理Web画面

# ============================================================
# 3. 画面定義要素
# ============================================================

- 画面目的
- 表示項目
- 入力項目
- 操作項目
- 状態別表示
- 利用API
- 主な遷移

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


# ------------------------------------------------------------
# SOURCE 46
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/120.implementation-ready/120001_CIVILIZATION_PORTAL_SITE_API_EXACT_CONTRACT.md

# ============================================================
# CIVILIZATION PORTAL SITE API EXACT CONTRACT
# ============================================================

status: canonical-design
layer: implementation-ready
domain: api-exact-contract
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site API の exact contract 参照文書である。

# ============================================================
# 2. API区分
# ============================================================

- 公開情報API
- CivilizationOS 認証参照API
- 遷移判定API
- ランチャーAPI
- 管理API

# ============================================================
# 3. 遷移判定API 要件
# ============================================================

- 遷移可能か
- ログインが必要か
- 拒否理由
- メンテ理由
- 次に取るべき行動
- return context token

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


# ------------------------------------------------------------
# SOURCE 47
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/120.implementation-ready/120002_CIVILIZATION_PORTAL_SITE_DB_LOGICAL_SCHEMA.md

# ============================================================
# CIVILIZATION PORTAL SITE DB LOGICAL SCHEMA
# ============================================================

status: canonical-design
layer: implementation-ready
domain: db-logical-schema
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site の論理schema概要を定義する。

# ============================================================
# 2. 論理schema
# ============================================================

Portal Site の論理 schema は `portal` を採用する。

# ============================================================
# 3. 主要論理テーブル
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


# ------------------------------------------------------------
# SOURCE 48
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/120.implementation-ready/120003_CIVILIZATION_PORTAL_SITE_DB_PHYSICAL_GUIDELINE.md

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


# ------------------------------------------------------------
# SOURCE 49
# ------------------------------------------------------------
# /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site/120.implementation-ready/120004_CIVILIZATION_PORTAL_SITE_EXACT_COLUMN_DEFINITION.md

# ============================================================
# CIVILIZATION PORTAL SITE EXACT COLUMN DEFINITION
# ============================================================

status: canonical-design
layer: implementation-ready
domain: exact-column-definition
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site DB の exact column 定義参照文書である。

# ============================================================
# 2. 対象
# ============================================================

- category master
- segment master
- os master
- asset
- os listing
- os launch rule
- notice
- feature slot
- copy
- maintenance
- personalized launcher state
- admin audit log

# ============================================================
# 3. 現在状態
# ============================================================

本設計は schema-definition level では implementation-ready である。  
ただし、実装自体はまだ開始しない。

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

