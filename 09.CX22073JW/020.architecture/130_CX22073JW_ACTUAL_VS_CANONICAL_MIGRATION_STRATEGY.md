# CX22073JW Actual vs Canonical Migration Strategy
- project: CX22073JW
- document_type: actual-vs-canonical-migration-strategy
- status: implementation-ready-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
本書は、既存の CX22073JW 実物スキーマと canonical 設計との差分をどう扱うかを定義する。

## 2. Core Conclusion
CX22073JW は全面作り直しではなく、
**actual schema を活かしながら additive に canonical へ寄せる**
方針を採る。

## 3. Why Full Rebuild Is Not Preferred
- 既存通常層はすでに蓄積が大きい
- Phase1 の view / function / reference 基盤がある
- secret layer は分離追加で実現できる
- 全再作成は不要な破壊範囲が大きい

## 4. Migration Principle
### 4-1. keep
既存で canonical と整合し、継続価値が高いものは保持する。

### 4-2. add
canonical で必要だが actual に不足しているものは追加する。

### 4-3. rename-or-wrap
名前やI/Fが少しズレているが意味的に近いものは、
即 drop せず rename または wrapper/view で吸収する。

### 4-4. deprecate
役割重複・命名衝突・今後非推奨のものは、
即削除ではなく deprecated 扱いで整理する。

## 5. Secret Layer Rule
triple secret layer は通常層へ混ぜ込まず、
**新規 privileged table family として追加**
する。

## 6. Audit Sequence
差分監査は次の順で行う。

1. actual table inventory
2. actual column inventory
3. FK / index inventory
4. canonical required table list との突合
5. keep / add / deprecate 判定
6. delta DDL planning

## 7. Output Types
この差分監査で作る成果物は:
- current schema snapshot
- keep/add/deprecate ledger
- delta DDL planning note

## 8. Final Rule
全面再作成は原則しない。
ただし以下は局所置換候補とする。
- PK/FK 方針が根本的に不整合
- 命名が canonical と大きく衝突
- 同義テーブル重複が大きい
- 実データがほぼ空で移行コストが低い
