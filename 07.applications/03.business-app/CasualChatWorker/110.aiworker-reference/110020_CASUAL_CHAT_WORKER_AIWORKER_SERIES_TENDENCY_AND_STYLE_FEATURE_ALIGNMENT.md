# CasualChatWorker AIWorker Series Tendency and Style Feature Alignment

status: active
phase: Phase L
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

CasualChatWorker must align with the latest AIWorkerOS read surfaces for:

- series tendency
- model / individual personality feature
- LoVerS style selection card
- strong safety notice requirement

## 2. AIWorkerOS Latest Canon

Series tendency axes:

- initiative / 積極性
- user_influence / ユーザー影響度
- action_restriction / 行動制限

HD Series:

- initiative: medium / 中
- user_influence: none / 変化しない
- action_restriction: strict_policy / 指定規約厳守

LoVerS Series:

- initiative: per_model / 各個体による
- user_influence: soft / やや変化
- action_restriction: strict_policy / 指定規約厳守

## 3. CasualChatWorker Read Surfaces

CasualChatWorker should read series tendency from:

- aiworker.vw_series_tendency_summary_v1
- aiworker.vw_series_tendency_profile_v1

CasualChatWorker should read LoVerS style cards from:

- aiworker.vw_app_lovers_style_selection_card_v1

Expected LoVerS style card fields:

- style_no_text
- app_display_name_ja
- app_display_summary_ja
- app_display_tags_ja
- recommended_usage_jsonb
- requires_strong_safety_notice_flag

## 4. UI Usage

AI worker cards should display:

- worker type
- series tendency summary
- personality / style display name
- style tags
- recommended usage
- strong safety notice flag when applicable

## 5. Boundary

CasualChatWorker is read-only against AIWorkerOS.

CasualChatWorker must not mutate:

- aiworker series tendency
- aiworker style feature profile
- aiworker model style assignment
- aiworker conversation control
- aiworker safety boundary

