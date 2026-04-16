# CX22073JW Integrated Canonical Design Summary
- project: CX22073JW
- document_type: integrated-canonical-design-summary
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
本書は、これまで分割して整理してきた CX22073JW 設計を
一体として読めるようにする統合サマリである。

## 2. CX22073JW の最終的な位置づけ
CX22073JW は Civilization 全体の
**AI搭載・共通知識 / 参照 / 雛形 基盤** である。

単なるデータ保管庫ではなく、
次の役割を持つ。

- 固定知識の正本保持
- 参照値 / 基準 / 分類 / 雛形の保持
- foundation AI による保管最適化
- view / function による基盤ロジック提供
- privileged triple route による secret layer の分離保持

## 3. 二層 + 特権ルート構造
CX22073JW は設計上、次の多層構造を持つ。

### 3-1. Normal Foundation Layer
扱うもの:
- fixed knowledge
- reference data
- templates
- governance metadata
- foundation helper views/functions

### 3-2. Embedded Foundation Intelligence Layer
扱うもの:
- storage optimization
- placement optimization
- indexing support
- summarization/compression support
- retrieval readiness improvement

### 3-3. Triple Secret Layer
扱うもの:
- privileged-only secret-bearing assets
- privileged metadata
- secret target selection
- privileged auditability-ready structures

## 4. 主要設計原則
- fixed/reference/template は CX22073JW
- runtime/user/case/session data は app-side
- caller_code + requested_scope は通常ルート用
- triple route は通常ルートと分離
- secret layer は normal layer と混在させない
- foundation AI は最適化主体であり front full agent ではない

## 5. 現在の成熟度
### 5-1. かなり固い領域
- knowledge core
- relation / entity / classification
- health reference / health score
- food / nutrition / meal support
- foundation views / functions
- boundary / route / policy docs

### 5-2. 固定済み secret 前提
- triple route exists
- secret layer exists
- secret categories v1 fixed
- privilege tiers v1 fixed
- minimum first slice fixed
- minimum audit scope fixed

## 6. 次にそのまま進めるもの
このあと直結できる設計は次の2本である。

### A. 統合 canonical design 本文
architecture/model/integration/policy/implementation-ready を
一本化した正式設計書

### B. Secret layer exact DDL candidate
固定済み minimum first slice をもとにした exact table/column 草案

## 7. 結論
CX22073JW はもう「概念設計が散らばっている段階」ではなく、
**統合設計または exact DDL 草案に入れる段階**
まで到達している。
