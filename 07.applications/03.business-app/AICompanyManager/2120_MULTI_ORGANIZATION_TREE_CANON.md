# ============================================================
# AICompanyManager Multi Organization Tree Canon
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase W
status: multi-organization-tree-canon-created

## 1. Canon

Each company can own multiple organization trees.

Examples:
- 経営・開発ツリー
- 営業・納品ツリー
- 調査・資料化ツリー
- 保守・改善ツリー

## 2. Tree Model

organization_trees:
- tree_id
- tree_name
- tree_purpose
- units

units:
- unit_id
- parent_unit_id
- unit_name
- purpose
- ai_role
- aiworker_id
- deliverable

## 3. Tree Behavior

A unit with empty parent_unit_id is a root unit.
A unit with parent_unit_id belongs under another unit.

The UI can render a simple tree by grouping units by parent_unit_id.

## 4. AIWorker Selection

Organization unit assignment uses AIWorker catalog.

Future live source:
- AIWorkerOS catalog through server-mediated route

Current mock source:
- local mock AIWorker catalog
