# CareerLaunch KEY AND CONSTRAINT POLICY
## Constraints
- FK は application_position を中心に明示する。
- revision entity は parent delete cascade を避ける。
- 公開共有 URL ではなく permission row を優先する。
