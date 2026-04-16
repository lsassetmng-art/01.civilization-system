# ============================================================
# POCKET SECRETARY LIBRARY INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the user interface for the Library domain.

required UI elements:
- library file list
- file registration action
- file detail or preview entry
- explicit delete action
- summary visibility where available

rules:
- library stores personal files such as PDF, image,
  and personal file materials
- registration and deletion remain explicit
- file existence and summary availability remain visually distinguishable
