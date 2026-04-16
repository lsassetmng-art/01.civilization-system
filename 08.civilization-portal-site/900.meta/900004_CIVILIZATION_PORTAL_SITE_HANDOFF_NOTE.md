# ============================================================
# CIVILIZATION PORTAL SITE HANDOFF NOTE
# ============================================================

status: canonical-design-support
layer: meta
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
Civilization Portal Site 設計を
別チャットまたは次工程へ引き継ぐための
短い引き継ぎ文書である。

# ============================================================
# 2. 現在状態
# ============================================================

Civilization Portal Site 設計は、
実装前 canonical design として完了している。

現時点の状態は次の通りとする。

- 実装未着手
- DDL未実行
- 本番投入未実施
- Webページ前提で設計固定済み
- 実装設計文書追加済み

# ============================================================
# 3. システム定義
# ============================================================

Civilization Portal Site は、
Civilization 全体の公開入口となる
公式Webポータルである。

Portal Site は次を担う。

- 各OSへの唯一の公式Web導線
- 新規登録案内
- ログイン案内
- ログイン済み利用者向けWebランチャー
- 公開情報提供
- ポータル運営管理

新規登録と認証の正本は CivilizationOS とする。  
OS間の直接リンクは禁止する。

# ============================================================
# 4. ルート正本
# ============================================================

主要ルート文書は次の通りとする。

- 00000_CIVILIZATION_PORTAL_SITE_ROOT_FILE_GUIDE.md
- 0000_CIVILIZATION_PORTAL_SITE_FOLDER_OVERVIEW.md
- 000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- 000_CIVILIZATION_PORTAL_SITE_INDEX.md
- 00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

本文正本は次とする。

- 00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

# ============================================================
# 5. 分割レイヤ
# ============================================================

分割レイヤは次の通りとする。

- 020.architecture
- 030.model
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 120.implementation-ready
- 130.development
- 900.meta

# ============================================================
# 6. 重要前提
# ============================================================

- Portal Site は Webサイト / Webアプリ前提である。
- 各OS利用開始は Web入口への遷移として扱う。
- 未ログイン時は CivilizationOS のWebログインページへ誘導する。
- 認証後は原則として要求元の対象OS Web入口へ復帰させる。
- 各OS内部の詳細権限制御は各OSが担う。
- Portal Site は入口前段判定のみを担う。

# ============================================================
# 7. 実装設計の位置づけ
# ============================================================

130.development は、
実装そのものではなく、
実装前の具体的な開発設計を扱う layer である。

含む内容は次の通りとする。

- 開発優先方針
- フェーズ分解
- P0 Web基盤
- P1 公開ページ
- P2 認証導線
- P3 OS入口制御
- P4 マイランチャー
- ディレクトリ構成
- ファイル責務境界

# ============================================================
# 8. 推奨参照順
# ============================================================

推奨参照順は次の通りとする。

1. 00000_CIVILIZATION_PORTAL_SITE_ROOT_FILE_GUIDE.md
2. 0000_CIVILIZATION_PORTAL_SITE_FOLDER_OVERVIEW.md
3. 000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
4. 000_CIVILIZATION_PORTAL_SITE_INDEX.md
5. 00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md
6. 各レイヤ overview / index
7. 各個別文書
8. 130.development
9. 900.meta 補助文書

# ============================================================
# 9. 補助文書
# ============================================================

900.meta の主要補助文書は次の通りとする。

- 900000_CIVILIZATION_PORTAL_SITE_INTEGRATED_TO_SPLIT_MAPPING.md
- 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
- 900002_CIVILIZATION_PORTAL_SITE_DESIGN_COMPLETE_NOTE.md
- 900003_CIVILIZATION_PORTAL_SITE_FINAL_VERIFICATION_NOTE.md
- 900004_CIVILIZATION_PORTAL_SITE_HANDOFF_NOTE.md
- 900005_CIVILIZATION_PORTAL_SITE_DEVELOPMENT_LAYER_REFLECTION_NOTE.md

# ============================================================
# 10. 次工程候補
# ============================================================

次工程候補は次の通りとする。

- 実装設計レビュー
- Civilization System 全体 index への反映検討
- P0 実装着手
- 実装に進む場合は本設計書群を正本参照とする

# ============================================================
# 11. 最終記録
# ============================================================

Civilization Portal Site 設計書群は、
別チャットへ引き継ぎ可能な状態で整理済みである。

現時点では、
実装、DDL、本番投入はまだ行わない。
