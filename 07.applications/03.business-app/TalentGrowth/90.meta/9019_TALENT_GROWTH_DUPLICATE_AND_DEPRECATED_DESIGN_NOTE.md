# TALENT GROWTH DUPLICATE AND DEPRECATED DESIGN NOTE

status: deprecated-note
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
旧 handoff / 旧配置 / 旧進捗表現を
正式正本から外すための note である。

# 1. deprecated items
以下は旧系として扱う。

- system name: talent-growth-and-evaluation
- folder root: TalentGrowthEvaluation
- 020.design/workflow/0201001_TALENT_GROWTH_EVALUATION_WORKFLOW_DESIGN.md
- 020.design/screen/0201002_TALENT_GROWTH_EVALUATION_SCREEN_LIST_DESIGN.md
- 020.design/screen/0201003_TALENT_GROWTH_EVALUATION_SCREEN_FIELDS_EXACT.md

# 2. reason
- current official root is TalentGrowth
- current design progressed far beyond workflow / screen / fields exact only
- current official root entry is 000 / 001 / 00 integrated rebuilt / 006 / 007
- old progress note says next is tables / payload / permissions / audit ledger, which is outdated
- old workflow statuses and entity names are no longer canonical

# 3. official replacement
replace old handoff usage with:
- 000_TALENT_GROWTH_DESIGN_INDEX.md
- 001_TALENT_GROWTH_DESIGN_OVERVIEW.md
- 00_TALENT_GROWTH_INTEGRATED_MASTER_REBUILT.md
- 006_TALENT_GROWTH_IMPLEMENTATION_HANDOFF_FIXED.md
- 007_TALENT_GROWTH_CANONICAL_HANDOFF_REFRESH.md

# 4. conclusion
旧 handoff 群は削除または参照停止対象とし、
TalentGrowth root 正式入口へ一本化する。
