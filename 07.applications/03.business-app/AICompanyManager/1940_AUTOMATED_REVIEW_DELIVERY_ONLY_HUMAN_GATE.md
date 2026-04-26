# ============================================================
# AICompanyManager Automated Review And Delivery-Only Human Gate
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase U
status: automated-review-delivery-only-human-gate-designed

## 1. Canon

Human does not perform normal review operations.

AI reviews automatically between Worker, Leader, Manager, and President layers.

Human gate exists only at delivery.

## 2. AI Review Flow

Worker creates output.
Leader auto-reviews worker output.
Manager auto-reviews integrated output.
President auto-reviews final output.
AI prepares delivery candidate.
Human accepts or requests final revision.

## 3. Human Delivery Gate

Human can:
- inspect delivery
- accept delivery
- request final revision
- export handoff oneblock

Human cannot:
- manually operate each AI review step
- manually approve every internal role transition
- edit hidden AIWorkerOS internal pipeline state directly

## 4. UI Implication

Remove review operation buttons from main screen.

Keep:
- delivery accept
- delivery revision request
- handoff export
