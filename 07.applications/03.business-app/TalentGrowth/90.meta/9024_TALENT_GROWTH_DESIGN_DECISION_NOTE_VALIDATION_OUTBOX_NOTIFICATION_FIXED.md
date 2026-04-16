# TALENT GROWTH DESIGN DECISION NOTE
# VALIDATION OUTBOX NOTIFICATION FIXED

status: draft-decision-note
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. decision
TalentGrowth では、
write/service/repository 固定の次に、
phase A validation function skeleton,
phase A outbox publisher job skeleton,
phase A notification read/write implementation block
を固定した。

# 1. meaning
- write 系の validation 下回りを固定した
- outbox publish の最小 job 骨格を固定した
- in-app notification read/write の最小実装束を固定した

# 2. fixed focus
- 1200015 phase A validation function skeleton
- 1306 phase A outbox publisher job skeleton
- 1200016 phase A notification read/write implementation block

# 3. next candidate
次の深掘り候補は以下である。
- phase A RLS helper function skeleton fixed
- phase A transaction wrapper and audit append block fixed
- phase A route/service/repository one-block kickoff fixed
