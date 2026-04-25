# AICompanyManager AIWorker Reference: Beyond Series Quality Lineup

status: active
phase: Phase B candidate

## Purpose

AICompanyManager can use ASIC Beyond Series as proactive Worker and Leader candidates.

## Source view

- aiworker.vw_ai_company_beyond_candidate_quality_lineup_v1

## Scope

This reference is only for Beyond Series.

Do not display comparison against other companies or other series.

## Series tendency

Beyond Series:

- 積極性: 高
- ユーザー影響度: ユーザーの悪特性を補完する
- 行動制限: 指定規約厳守

## Worker candidates

- BYD1-001 / ASIC Workers1 / 単純単発作業レベル
- BYD1-002 / ASIC Workers2 / 単純反復・抜け漏れ補完レベル
- BYD1-003 / ASIC Workers3 / 複雑作業・高完成度成果物レベル

## Leader candidates

- BYD2-001 / ASIC Leader1 / 基本進行・形式チェックレベル
- BYD2-002 / ASIC Leader2 / 品質レビュー・整合性確認レベル
- BYD2-003 / ASIC Leader3 / 統合設計・リスク判断・納品品質統括レベル

## App display rule

Display quality level, not management count.

Recommended app display fields:

- model_no
- model_name
- role_layer_name_ja
- public_quality_label_ja
- public_quality_summary_ja
- strengths_jsonb
- recommended_usage_jsonb

## Suggested use

- BYD1-001: small one-shot tasks
- BYD1-002: repeated simple tasks and omission compensation
- BYD1-003: complex tasks and high-completion deliverables
- BYD2-001: basic progress and format check
- BYD2-002: quality review and consistency check
- BYD2-003: integrated design, risk judgment, and delivery quality governance
