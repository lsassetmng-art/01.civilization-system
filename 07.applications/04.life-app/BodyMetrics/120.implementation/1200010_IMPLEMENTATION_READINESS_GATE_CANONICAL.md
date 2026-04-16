# ============================================================
# IMPLEMENTATION READINESS GATE CANONICAL
# ============================================================

status: fixed-canonical

implementation_readiness_definition:
  - 実装に入る前に必要な設計情報が過不足なく揃っている状態
  - ただしコード・SQL・画面実装そのものはまだ行わない

ready_items:
  - app scope fixed
  - billing fixed
  - runtime schema fixed
  - unresolved items closed
  - DB structure fixed
  - API request / response fixed
  - screen display fixed
  - Family Care permission model fixed
  - privacy / audit gates fixed
  - code contracts fixed
  - test readiness gate fixed

not_started_items:
  - SQL writing
  - API server implementation
  - client implementation
  - connector implementation
  - UI component implementation

judgement:
  bodymetrics_design_state: implementation_ready
