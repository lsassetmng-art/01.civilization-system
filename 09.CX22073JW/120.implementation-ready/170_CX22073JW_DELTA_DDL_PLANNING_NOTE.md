# CX22073JW Delta DDL Planning Note
- project: CX22073JW
- document_type: delta-ddl-planning-note
- status: implementation-ready-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
本書は、current schema audit の後に何を delta DDL として起票するかを整理する。

## 2. Planning Rule
### 2-1. If actual table does not exist
- decision = add
- action = exact DDL candidate から起票

### 2-2. If actual table exists and shape matches enough
- decision = keep or rename-or-wrap
- action = minimal delta only

### 2-3. If actual table exists but shape conflicts strongly
- decision = replace or deprecate + add
- action =局所置換計画を起票

## 3. First Target
最初の delta DDL 対象は:
- secret-layer first slice

## 4. Normal Layer Rule
通常層は原則 rebuild しない。
secret-layer 追加と局所整流を優先する。

## 5. Deliverables After Audit
監査後に作るもの:
- filled keep/add/deprecate ledger
- delta DDL bundle
- delta seed bundle
- delta verification SQL
