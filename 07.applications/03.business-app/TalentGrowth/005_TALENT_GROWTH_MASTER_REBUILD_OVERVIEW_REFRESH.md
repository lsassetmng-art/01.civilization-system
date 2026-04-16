# TALENT GROWTH MASTER REBUILD OVERVIEW REFRESH

status: master-rebuild-overview-refresh
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. rebuild summary
TalentGrowth は、
初期のアプリ構想から始まり、
機能拡張、画面、API、データ、権限、イベント、同期、数式、
実装、テスト、release gate まで
一貫設計として再構成された。

# 1. what is now fixed
- system scope
- rival response scope
- full feature scope
- screen hierarchy
- screen flow
- screen field definition
- wireframe block
- API payload
- endpoint inventory
- validation matrix
- exact columns
- DDL skeleton
- RLS and sensitive access
- outbox / notification / batch
- frontend state and sync
- KPI and scoring formulas
- notification templates
- implementation tasks
- test matrix
- release checklist

# 2. what is intentionally separated
- common component formal design
- external shared component ledger
- non-TalentGrowth shared UI ownership

# 3. practical reading route
- overview
- integrated rebuilt
- implementation handoff
- phase A tasks
- release checklist

# 4. conclusion
この refresh により、
TalentGrowth は
別チャットでも再開しやすい master-design 状態になった。
