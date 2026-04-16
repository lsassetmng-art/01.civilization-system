# ============================================================
# KNOWLEDGE AND RUNTIME STORAGE BOUNDARY
# ============================================================

status: fixed

boundary_summary:
  - runtime user health data は life schema に置く
  - fixed reference knowledge は CX22073 側に置く
  - BodyMetrics は両者を混在させない

runtime_side_life:
  - user measurements
  - provider import results
  - notes
  - goals
  - score results
  - comparison results
  - sharing settings
  - export jobs

knowledge_side_cx22073:
  - reference ranges
  - measurement condition knowledge
  - metric semantics
  - score rule definitions
  - source metadata
  - explanation text masters

integration_rule:
  - BodyMetrics runtime は life schema を正本とする
  - comparison / score 表示時のみ knowledge を参照する
  - knowledge 更新で user runtime records を直接書き換えない
