# ============================================================
# AICompanyManager Phase U UI Revision Canon
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase U
status: ui-revision-canon-created

## 1. Dashboard

The company dashboard is horizontal.

Required columns:
- Column 1: company overview
- Column 2: role progress
- Column 3: current work and AI auto review
- Column 4: human delivery gate

## 2. Settings Screen

Policy input is moved to settings.

Settings includes:
- company name
- business domain
- robot naming rule
- organization definition
- company policy
- delivery acceptance rule

## 3. Role Progress

Role progress appears inside company dashboard column 2.

Pipeline:
- President
- Manager
- Leader
- Worker
- AI auto review
- Delivery preparation
- Human delivery acceptance

## 4. Review Operation

Human review operation is removed from normal workflow.

AI performs review automatically.

Human interacts only at delivery:
- accept delivery
- request revision at delivery
- export handoff package

## 5. Local Queue

Local queue should not be displayed as a primary UI section.

Use understandable labels:
- 自動保存状態
- 最終更新
- 同期待ち
- 内部処理中

## 6. Collapsible UI

Each major item should be collapsible.

Required collapsible groups:
- company settings
- organization settings
- role progress
- current work
- AI auto review
- delivery gate
- handoff materials
