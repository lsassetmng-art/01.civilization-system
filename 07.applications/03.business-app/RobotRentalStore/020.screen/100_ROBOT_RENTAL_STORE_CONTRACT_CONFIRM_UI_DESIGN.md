# RobotRentalStore Contract Confirm UI Design

## Status
- status: implementation
- target: ui/static/index.html

## Production user flow
1. User selects robot.
2. User saves quote.
3. UI stores rental_contract_id returned by quote save.
4. User presses 申込を確定.
5. API confirms the contract.

## Visible buttons
- 見積を保存
- 申込を確定

## Not visible
- debug buttons
- rollback smoke buttons
- raw API base
- raw civilization id
- raw persistence flags
