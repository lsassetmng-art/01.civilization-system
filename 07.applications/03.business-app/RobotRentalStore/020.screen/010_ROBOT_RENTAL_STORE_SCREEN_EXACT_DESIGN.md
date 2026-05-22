# RobotRentalStore Screen Exact Design

## 1. 画面名
ロボットレンタル

## 2. 画面目的
ユーザーがBusinessOS上のロボット/AIワーカーを見つけ、レンタル条件を選択し、申込へ進める。

## 3. 主要UIブロック

### 3.1 Header
表示:
- ロボットレンタル
- サブコピー: 仕事・雑談・接客・補助に使えるAIロボットを選んでレンタル
- 状態バッジ:
  - BusinessOS
  - WorkerRentalCore
  - CommonOS-ready

### 3.2 Filter bar
絞り込み:
- シリーズ: すべて / HD / LoVerS / Beyond / MEGAMI
- ロール: すべて / Worker / Helper / Leader / Manager / Advisor / Specialist / Friend / Lover / Butler / Security / CombatSpecialist / TacticalLeader / StrategicCommander
- 用途: 業務 / 会話・演出 / 警備・危機対応
- 検索: model_code / 機種名 / シリーズ名 / ロール名

### 3.3 Robot card list
各カード表示:
- model_code
- model_name_ja
- series
- manufacturer
- role chips
- short_description
- starting_price
- rental_units
- safety badge
- 詳細を見る button
- レンタル候補に追加 button

### 3.4 Detail panel
表示:
- モデル基本情報
- ロール説明
- シリーズ説明
- 性格/公開プロフィール
- CX knowledge reference note
- 安全境界
- 推奨用途
- レンタル可能単位
- 料金

### 3.5 Rental plan selector
入力:
- rental_unit: minute / hour / day / month / year
- duration_quantity
- quantity
- start_timing: immediate / scheduled
- use_free_ticket flag
- note

### 3.6 Quote summary
表示:
- ロボット
- レンタル単位
- 数量
- 小計
- 無料チケット適用
- 合計予定額
- 注意事項

## 4. Lover安全境界
Loverは擬似恋人・演出・キャラクター商材用ロール。
実在恋愛関係、成人向け性的サービス、監視、脅し、依存誘導、個人情報要求、自由制限は不可。

## 5. Combat安全境界
Combat系は、フィクション、ゲーム、世界観、警備設計、防災/危機管理、高レベルな歴史/戦術説明に限定。
現実の危害実行支援、武器使用手順、標的選定、犯罪・暴力支援は不可。
