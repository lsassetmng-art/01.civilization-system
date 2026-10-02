# AIWorkerOS Model Catalog / Dialog Style / LoVerS Append

status: appended-design
system: AIWorkerOS
owner: Boss
prepared_by: Zero

## 1. Canonical boundary

AIWorkerOS is the canonical owner of AI worker catalog and behavior-control data.

AIWorkerOS owns:
- manufacturer catalog
- worker series catalog
- role class catalog
- worker model catalog
- service catalog
- model-service assignment
- conversation control
- dialog style / interaction style
- model growth delta
- public performer profile
- live activity profile
- public model metrics
- dialog control views

CX22073JW does not own AI worker catalogs.
CX22073JW provides reusable knowledge and topic reference materials only.

## 2. Core AI worker catalog objects

Canonical schema:
- aiworker

Canonical tables:
- aiworker.manufacturer_catalog
- aiworker.worker_series_catalog
- aiworker.worker_role_class_catalog
- aiworker.worker_model_catalog
- aiworker.worker_series_tendency
- aiworker.service_catalog
- aiworker.model_service_assignment

Generic search views:
- aiworker.vw_worker_series_directory
- aiworker.vw_worker_series_lineup
- aiworker.vw_worker_series_search_directory
- aiworker.vw_worker_series_search_lineup

Series-specific retrieval must be done by SQL conditions, for example:
- manufacturer_code = lavi_corporation and series_code = lovers_series
- manufacturer_code = helios_dynamics and series_code = hd_series

## 3. HD Series rule

Manufacturer:
- helios_dynamics / Helios Dynamics / ヘリオスダイナミクス

Series:
- hd_series / HD Series / HDシリーズ

HD Series is a broad general-purpose worker lineup.
The HD Series itself does not fix personality.
It may have operating posture / safety posture / default tendency, but personality should be overlaid at dialog/service level when needed.

HD registered lineup:
- HD-R5 / Manager / 最上位統制aiワーカー
- HD-R4 / Leader / 上位統制aiワーカー
- HD-R3 / Worker / Aiワーカー
- HD-R1 / Helper / 秘書aiワーカー
- HD-R2 / Butler / 戦闘員aiワーカー
- HD-R1C / Friend / フレンドaiワーカー
- HD-R1A / Lover / 恋人系aiワーカー
- HD-R2S / Sniper / 狙撃手aiワーカー
- HD-R2G / General / 軍統制および戦闘員aiワーカー
- HD-R2T-0 / Origin / 全体統括および全距離型戦闘員aiワーカー

HD Series tendency:
- やや積極的
- 初期の思考方針を大きく逸脱しない
- やや保守的

## 4. LoVerS Series rule

Manufacturer:
- lavi_corporation / lAvI Corporation / ラヴィコーポレーション

Series:
- lovers_series / LoVerS Series / LoVerSシリーズ

LoVerS Series is relationship-oriented.
Unlike HD, LoVerS models have model-level default interaction styles.

LoVerS model number rule:
- prefix: LVS
- format: LVS-{style_no}{gender}v{version}
- example: LVS-01Mv012
- style_no: two digits, 01 to 99
- gender: M = male form, F = female form
- version: three digits
- initial auto registration uses random 005 to 015

Canonical helper:
- aiworker.fn_build_lovers_model_no(style_no, gender, version)

## 5. Generic interaction style layer

The following tables are generic and are not LoVerS-only:
- aiworker.interaction_style_catalog
- aiworker.model_style_assignment
- aiworker.model_identity_spec
- aiworker.public_activity_profile
- aiworker.public_metric
- aiworker.style_topic_bias
- aiworker.style_expression_overlay

Purpose:
- interaction_style_catalog: reusable personality / interaction style catalog by series
- model_style_assignment: assigns default style to a model
- model_identity_spec: stores parsed model number identity parts
- public_activity_profile: public performer / live activity profile
- public_metric: public metrics such as height, bust, waist, hip, chest
- style_topic_bias: topic preference by style and service
- style_expression_overlay: speaking-style overlay by style and service

## 6. LoVerS canonical style numbers

01 元気系
02 清楚系
03 おっとり系
04 甘え上手系
05 しっかり者系
06 クール系
07 癒やし系
08 お姉さん系
09 ツンデレ寄り
10 無邪気系
11 クーデレ
12 ビジネスヤンデレ

## 7. LoVerS model registration state

LoVerS registered models:
- 12 styles x M/F = 24 models

Expected counts:
- enabled_model_count: 24
- style_count: 12
- male_model_count: 12
- female_model_count: 12
- live_enabled_model_count: 24
- missing_style_count: 0
- missing_gender_count: 0
- missing_version_count: 0
- missing_public_profile_count: 0

Public profile:
- Female form publishes height_cm / bust_cm / waist_cm / hip_cm.
- Male form publishes height_cm / chest_cm / waist_cm / hip_cm.

## 8. Generic dialog style control views

Generic views:
- aiworker.vw_worker_dialog_style_control
- aiworker.vw_worker_dialog_topic_bias

These views are not LoVerS-only.

vw_worker_dialog_style_control returns:
- manufacturer
- series
- model
- role class
- service
- style
- opener_overlay
- followup_overlay
- closing_overlay
- redirect_overlay

vw_worker_dialog_topic_bias returns:
- manufacturer
- series
- model
- service
- style
- topic_code
- topic_group_code
- weight_value
- note_text

Design decision:
Do not create LoVerS-only dialog control tables.
Use generic AIWorkerOS tables and filter by manufacturer_code / series_code / style_no.
