# ============================================================
# DISPATCHER OPERATIONS
# ============================================================

status: canonical
scope: civilization.dispatcher


# PURPOSE

Control event dispatching.


# COMPONENTS

Event Queue
Dispatcher Worker


# DISPATCH FLOW

Event Queue Scan
↓
Event Dispatch
↓
Processing Confirmation


# FAILURE HANDLING

Dispatcher retry mechanism.

