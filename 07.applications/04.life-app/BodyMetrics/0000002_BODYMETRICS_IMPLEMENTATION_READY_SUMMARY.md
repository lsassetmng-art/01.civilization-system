# ============================================================
# BODYMETRICS IMPLEMENTATION READY SUMMARY
# ============================================================

status: fixed

summary:
  - BodyMetrics は設計上、実装準備完了まで到達している
  - 実装はまだ開始していない
  - 未決事項は残っていない
  - 以後の変更は change request として扱う

fixed_core:
  - runtime schema = life
  - fixed knowledge side = CX22073
  - personal core free
  - Family Care monthly 300 JPY
  - support = AI chat only
  - no diagnosis
  - no treatment decision
  - average comparison included
  - health score included
  - reference range included
  - Family Care recipient limit = 5

fixed_design_surface:
  - DB structure fixed
  - API request / response exact payload fixed
  - UI exact display fixed
  - DB / API / UI consistency fixed
  - privacy / audit / permission gate fixed
  - master code contract fixed
  - test readiness gate fixed

not_started:
  - SQL writing
  - API implementation
  - UI implementation
  - provider SDK implementation
  - connector implementation
