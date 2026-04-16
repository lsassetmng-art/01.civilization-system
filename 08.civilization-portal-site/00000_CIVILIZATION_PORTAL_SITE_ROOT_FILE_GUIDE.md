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
