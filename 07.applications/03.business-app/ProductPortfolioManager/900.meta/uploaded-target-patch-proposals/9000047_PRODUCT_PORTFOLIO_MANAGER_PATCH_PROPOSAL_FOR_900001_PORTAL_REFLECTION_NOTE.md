# ============================================================
# PRODUCT PORTFOLIO MANAGER PATCH PROPOSAL FOR
# 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file:
/mnt/data/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md

observed_file_shape:
The uploaded portal reflection note already contains:
- document purpose
- current placement
- reasons for placement
- points to reflect to upper indexes
- short explanation to write in upper indexes
- references
- current state

recommended_insert_zone:
- section equivalent to "上位 index へ反映すべき要点"
- section equivalent to "上位 index に書くべき短縮説明"
- references section if app-level links are listed there

recommended_insert_depth:
medium_to_long

proposed_key_points:
- ProductPortfolioManager is a business-judgment application
- it is not ERP itself
- it consumes ERP facts as reference
- it consumes forecast as advisory reference
- it owns application-side judgment artifacts
- design is expanded, implementation not started

short_insert_text_jp:
商品ポートフォリオ管理アプリ（ProductPortfolioManager）は、
ERPの事実値を参照しつつ、
商品評価、戦略分類、提案、レビュー、承認、監査履歴を扱う
軽量な商品戦略判断アプリである。
Forecast は参考情報として扱い、
ERP truth は保持したまま、
アプリ側で judgment artifact を持つ。

link_block:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
- /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

why_this_depth:
Portal reflection is discovery-oriented
and can tolerate a slightly richer summary than ultra-terse canonicals.

post_insert_check:
- the note still reads as a reflection note, not an app spec
- ProductPortfolioManager can be discovered cleanly
- wording stays additive and short
