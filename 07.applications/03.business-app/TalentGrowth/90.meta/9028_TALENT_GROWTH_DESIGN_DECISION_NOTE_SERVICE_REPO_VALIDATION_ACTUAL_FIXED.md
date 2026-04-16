# TALENT GROWTH DESIGN DECISION NOTE
# SERVICE REPO VALIDATION ACTUAL FIXED

status: draft-decision-note
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. decision
TalentGrowth では、
write actual / audit / RLS fixed の次に、
phase A service actual file one-block,
phase A repository actual file one-block,
phase A validation actual file one-block
を固定した。

# 1. meaning
- service の first actual files を固定した
- repository の first actual files を固定した
- validation の first actual files を固定した
- route -> validation -> service -> repository の実装線が揃った

# 2. fixed focus
- 1200023 phase A service actual file one-block
- 1200024 phase A repository actual file one-block
- 1200025 phase A validation actual file one-block

# 3. next candidate
次の深掘り候補は以下である。
- phase A DB client helper block fixed
- phase A transaction-aware repository actual block fixed
- phase A compile/run smoke command block fixed
