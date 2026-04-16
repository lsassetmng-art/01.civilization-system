# CX22073JW Secret Layer Review Checkpoints
- project: CX22073JW
- document_type: secret-layer-review-checkpoints
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document turns the review workflow into concrete checkpoints.

## 2. Review Checkpoints

### Checkpoint A. Boundary Integrity
確認事項:
- normal / secret / runtime の3境界が崩れていないか
- secret layer が普通の reference layer に落ちていないか

### Checkpoint B. Route Integrity
確認事項:
- triple route が通常 route の延長扱いになっていないか
- selector / target / tier が明示されているか

### Checkpoint C. Metadata Integrity
確認事項:
- privileged metadata が caller/scope に埋没していないか
- access_route / tier / selector / policy が独立概念のままか

### Checkpoint D. Audit Integrity
確認事項:
- privileged decision が監査可能前提で残っているか
- payload 全文監査に寄り過ぎていないか

### Checkpoint E. Slice Control
確認事項:
- first slice に不要な table が混ざっていないか
- deferred object が first slice に漏れ込んでいないか

## 3. Gate Use
これらの checkpoint は Phase0 gate 判定時に使う。

## 4. Conclusion
設計レビューは抽象論ではなく、checkpoint 単位で通す。
