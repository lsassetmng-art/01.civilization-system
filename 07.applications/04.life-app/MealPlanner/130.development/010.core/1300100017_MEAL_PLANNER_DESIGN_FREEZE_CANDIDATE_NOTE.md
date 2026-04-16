# MealPlanner Design Freeze Candidate Note

## 1. purpose
実装前の設計凍結候補として、どこまで固まっているかを整理する。

## 2. freeze_candidate_scope
以下は freeze candidate とみなせる

### business
- アプリ位置づけ
- 無料 / 有料500円
- AIチャットのみサポート
- 日 / 週 / 月提案
- budget_tier
- CSV出力
- user_menu 追加 / 公開申請
- CX22073JW 正本境界

### model
- life schema
- 主要 entity 群
- source_type / publication_status / plan_horizon / budget_tier
- snapshot 方針
- notification_preference の logical shape

### api
- 主要 request / response payload
- notification settings API
- publish request API
- export CSV API

### ui
- 主要画面一覧
- 画面 exact I/O
- free / paid gating
- UI copy
- validation copy
- CSV column policy
- component decomposition
- component props / event payload

### policy
- published menu versioning
- favorite / template snapshot-first
- published menu search / quality score
- history retention
- AIチャット / ストア境界

## 3. not_freezing_yet
- framework 別 component 定義
- DDL / SQL / migration
- 実装コード
- deep link / animation
- notification 実配送方式
- 他アプリ側 transport details

## 4. freeze_meaning
- いま大きく意味を変えない
- 小さな表現調整はありうる
- 実装前の大きな手戻りを防ぐための freeze candidate

## 5. recommended_judgement
- Boss がよければ、ここを設計 freeze candidate として扱ってよい
