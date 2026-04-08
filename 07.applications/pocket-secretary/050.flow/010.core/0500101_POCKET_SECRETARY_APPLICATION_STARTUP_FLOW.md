# ============================================================
# POCKET SECRETARY APPLICATION STARTUP FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. application launches
2. local configuration loads
3. local secretary state loads
4. dashboard and primary local data hydrate
5. offline / online capability state is determined
6. pending local actions are identified
7. user-visible surface becomes interactive
8. bounded background checks may run if allowed

rules:
- startup must not require external success for core local use
- failure in optional external checks must not block base usage
