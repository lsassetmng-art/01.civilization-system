# ============================================================
# CIVILIZATION PORTAL SITE DEVELOPMENT LAYER OVERVIEW
# ============================================================

status: canonical-design
layer: development
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
Civilization Portal Site の development layer 全体像を
短く定義するための overview 文書である。

# ============================================================
# 2. layer 役割
# ============================================================

development layer は、
Portal Site の実装そのものではなく、
実装前の具体的な開発設計を扱う。

本 layer は次を固定する。

- 開発優先方針
- 開発フェーズ
- フェーズ別実装設計
- ディレクトリ構成
- ファイル責務境界
- 実装着手順

# ============================================================
# 3. 扱う範囲
# ============================================================

development layer が扱う範囲は次の通りとする。

- P0 Web基盤立ち上げ
- P1 公開ページ先行実装
- P2 認証導線実装
- P3 OS入口制御実装
- P4 マイランチャー最小実装

P5 以降は後続拡張対象とする。

# ============================================================
# 4. 主要文書
# ============================================================

- 1300000_CIVILIZATION_PORTAL_SITE_DEVELOPMENT_OVERVIEW.md
- 1300001_CIVILIZATION_PORTAL_SITE_DEVELOPMENT_INDEX.md
- 1300002_CIVILIZATION_PORTAL_SITE_PHASE_P0_WEB_FOUNDATION_IMPLEMENTATION_DESIGN.md
- 1300003_CIVILIZATION_PORTAL_SITE_PHASE_P1_PUBLIC_PAGES_IMPLEMENTATION_DESIGN.md
- 1300004_CIVILIZATION_PORTAL_SITE_PHASE_P2_AUTH_ENTRY_IMPLEMENTATION_DESIGN.md
- 1300005_CIVILIZATION_PORTAL_SITE_PHASE_P3_OS_ENTRY_DECISION_IMPLEMENTATION_DESIGN.md
- 1300006_CIVILIZATION_PORTAL_SITE_PHASE_P4_LAUNCHER_IMPLEMENTATION_DESIGN.md
- 1300007_CIVILIZATION_PORTAL_SITE_DIRECTORY_AND_FILE_STRUCTURE_IMPLEMENTATION_DESIGN.md

# ============================================================
# 5. ルート正本参照
# ============================================================

本 layer の上位正本は次の通りとする。

- ../000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- ../000_CIVILIZATION_PORTAL_SITE_INDEX.md
- ../00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

development layer は、
上位正本に従って実装設計を具体化するための layer とする。

# ============================================================
# 6. 現在状態
# ============================================================

本 layer は設計書群であり、
実コードはまだ作成しない。
