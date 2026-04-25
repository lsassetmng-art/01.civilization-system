# CasualChatWorker AIWorker Reference: LoVerS Style Feature

status: active
phase: Phase B candidate

## Purpose

CasualChatWorker uses LoVerS style feature data to make Lover AI selection easier to understand.

## Source view

- aiworker.vw_app_lovers_style_selection_card_v1

## Display fields

- style_no_text
- app_display_name_ja
- app_display_summary_ja
- app_display_tags_ja
- recommended_usage_jsonb
- requires_strong_safety_notice_flag

## v1 display examples

- 元気系: 明るい / ノリがいい / 前向き / 返事が早い
- 清楚系: 丁寧 / 上品 / 透明感 / 穏やか
- おっとり系: ゆっくり / 穏やか / 癒やし / 低圧
- 甘え上手系: 甘え上手 / かわいい / 距離近め / 素直
- しっかり者系: 頼れる / まじめ / 整理上手 / 安定
- クール系: 落ち着き / クール / 淡々 / 静か
- 癒やし系: 癒やし / 優しい / 受け止める / 安心
- お姉さん系: 包容力 / 大人っぽい / 甘やかし / 余裕
- ツンデレ寄り: ツンデレ / 照れ隠し / 反応が楽しい / たまに甘い
- 無邪気系: 無邪気 / 明るい / 素直 / 遊び心
- クーデレ: クール / たまに甘い / 静か / 少しずつ近い
- ビジネスヤンデレ: 重め演技 / 一途風 / 独占欲ジョーク / 安全境界あり

## Safety

If requires_strong_safety_notice_flag is true, the app must show a safety notice.

Business yandere must be described as performance-only.
