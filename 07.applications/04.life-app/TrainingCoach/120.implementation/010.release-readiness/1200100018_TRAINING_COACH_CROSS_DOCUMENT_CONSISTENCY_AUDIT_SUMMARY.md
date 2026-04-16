# ============================================================
# TRAINING COACH CROSS-DOCUMENT CONSISTENCY AUDIT SUMMARY
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
  - ここまで積み上げた設計資料の整合状況をまとめる
  - 明確に一致している点と、後で再確認すべき点を分ける
  - 実装前の監査用メモとして保持する

confirmed_consistencies:
  - schema は life で統一
  - pricing は Free / Premium(500円) で統一
  - implementation-ready は設計上到達済み、ただし実装未着手
  - notification は support-first / safety-first トーンで統一
  - AI support は non-medical / non-judgmental で統一
  - share は summary-first / privacy-first で統一
  - BodyMetrics は inbound summary 利用、MealPlanner / LifePlanner は outbound summary で統一
  - guide content 初期 seed は ja-JP 正本で統一

cross_document_alignment_ok:
  - integrated design
  - schema binding
  - exact payload
  - physical table mapping
  - DDL draft
  - share candidate model
  - onboarding design
  - FAQ and help design
  - localization key policy
  - premium copy direction
  - AI support policy

needs_future_recheck:
  - premium screen exact layout and runtime rendering consistency
  - seed master catalog vs future physical SQL key strategy
  - future share UI wording vs permission model
  - guide content draft body vs future content governance workflow
  - article inventory vs future full help ledger expansion

risk_notes:
  - 文書量が多くなっているため、後段で index / summary の価値がさらに高くなる
  - future feature 文言が current feature に見えないよう継続確認が必要
  - master seed の code / id 戦略は DB review で最終固定が必要

overall_assessment:
  status: strong_design_consistency
  note:
    - 現時点の主要な設計方針同士には大きな矛盾は見当たらない
    - 実装前に再確認が必要なのは、主に future feature と seed insert strategy
