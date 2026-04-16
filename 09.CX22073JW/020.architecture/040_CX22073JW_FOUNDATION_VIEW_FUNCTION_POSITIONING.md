# CX22073JW Foundation View / Function Positioning
- project: CX22073JW
- document_type: foundation-view-function-positioning
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
本書は、これまで作成した view / function 群を、
単なる補助SQLではなく
**CX22073JW の基盤機能**として位置づけるための設計書である。

## 2. 基本位置づけ
view / function は、
CX22073JW に蓄積された固定知識・参照基盤・雛形データを
**アプリが使いやすい形へ再構成する基盤層**である。

同時に、
これらは CX22073JW に搭載された
**基盤AI / 基盤知能レイヤーの一部** として扱える。

つまり役割は次の通り。

- 生テーブルをそのまま読ませない
- profile / rule / reference の解決を共通化する
- compare / score / candidate extraction を再利用可能にする
- BodyMetrics / MealPlanner など複数アプリの共通基盤にする
- 保管済み知識資産の再編成・最適利用を支える

## 3. view の役割
view は主に次を担う。

- readiness 確認
- profile / rule_set 解決
- metric / nutrient / template の再編成
- monitoring 用の可視化
- app-side query の簡略化

view は
**read-only foundation interface**
として扱う。

## 4. function の役割
function は主に次を担う。

- 単一比較
- 単一採点
- 総合帯判定
- comment 候補解決
- deficit から food / recipe 候補抽出
- reference 値との比較計算

function は
**deterministic reusable logic unit**
として扱う。

## 5. runbook SQL の役割
runbook SQL は、
view / function を利用する
**運用・検証・試験実行用の資産**である。

runbook SQL 自体は基盤I/Fではないが、
基盤機能を確認するための
operations asset として重要である。

## 6. 基盤機能の層分け

### 6-1. monitoring layer
- readiness view
- linkage / coverage view
- runtime visibility view

### 6-2. reference abstraction layer
- profile resolution
- metric basis
- nutrition target basis
- food-to-reference bridge

### 6-3. compare / score layer
- bodymetrics metric score
- total band resolution
- nutrition compare
- food nutrient compare

### 6-4. candidate extraction layer
- deficit -> food candidates
- deficit -> recipe candidates
- detail breakdown

### 6-5. runbook orchestration layer
- full deficit runbook
- meal-slot separated runbook
- summary / top candidate verification

## 7. AI-equipped foundation interpretation
CX22073JW は単なる table 群ではなく、
AI搭載の知識・参照ストレージ基盤である。

そのため view / function 群は、
保管済み知識資産に対する次のような役割も持つ。

- structure optimization interface
- retrieval optimization support
- indexing-ready abstraction
- summarization-ready abstraction
- storage efficiency support through normalized reusable logic

## 8. 境界原則
重要なのは、
view / function が user-specific runtime data を
CX22073JW に保存することではない、という点である。

原則:
- input は app-side / temp / caller-side から渡す
- CX22073JW は固定知識・参照値・雛形を返す
- user-specific result は app-side で保持する

## 9. placement 方針
設計書の placement は次とする。

- architecture:
  - 位置づけ
  - 層分け
  - 境界原則
- model:
  - view / function 一覧
  - 入出力責務
- operations:
  - runbook / monitoring
- implementation-ready:
  - apply-ready bundle / seed / helper SQL

## 10. 最終結論
これまで作成した view / function 群は、
CX22073JW の **基盤機能** として正式に扱う。

特に
- BodyMetrics compare/score
- MealPlanner compare/candidate
- monitoring / readiness
は、Phase1 の foundation capability である。

さらにそれらは、
CX22073JW に搭載された
**基盤最適化AIの実働I/Fの一部**
としても解釈できる。
