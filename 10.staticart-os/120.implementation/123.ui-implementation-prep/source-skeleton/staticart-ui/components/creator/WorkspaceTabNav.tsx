import type { CreatorWorkspaceState } from "../../contracts/ui-types";

export interface WorkspaceTabNavProps {
  workspace: CreatorWorkspaceState;
  onSelectTab?: (tab: CreatorWorkspaceState["selectedTab"]) => void;
}

const TABS: CreatorWorkspaceState["selectedTab"][] = [
  "files",
  "metadata",
  "preview",
  "rights",
  "sales",
  "subscription",
  "self_check",
  "review",
  "publish",
  "audit",
];

export function WorkspaceTabNav(props: WorkspaceTabNavProps) {
  const { workspace, onSelectTab } = props;

  return (
    <nav>
      {TABS.map((tab) => (
        <button
          key={tab}
          aria-pressed={workspace.selectedTab === tab}
          onClick={() => onSelectTab?.(tab)}
        >
          {tab}
        </button>
      ))}
    </nav>
  );
}
