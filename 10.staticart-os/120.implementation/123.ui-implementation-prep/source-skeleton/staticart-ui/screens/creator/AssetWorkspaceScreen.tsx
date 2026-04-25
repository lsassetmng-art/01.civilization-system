import type { CreatorWorkspaceState } from "../../contracts/ui-types";
import { ScreenShell } from "../../components/common/ScreenShell";
import { ActionButton } from "../../components/common/ActionButton";
import { AssetSummaryRail } from "../../components/creator/AssetSummaryRail";
import { WorkspaceTabNav } from "../../components/creator/WorkspaceTabNav";

export interface AssetWorkspaceScreenProps {
  workspace: CreatorWorkspaceState;
}

export function AssetWorkspaceScreen(props: AssetWorkspaceScreenProps) {
  const { workspace } = props;

  return (
    <ScreenShell
      shell={{
        title: "Asset Workspace",
        subtitle: workspace.asset.title,
        loadState: "ready",
      }}
    >
      <AssetSummaryRail asset={workspace.asset} />
      <WorkspaceTabNav workspace={workspace} />
      <section>
        <p>Selected Tab: {workspace.selectedTab}</p>
        <ActionButton label="Submit Review" state={workspace.reviewSubmit} />
        <ActionButton
          label="Publish Marketplace"
          state={workspace.publishMarketplace}
        />
        <ActionButton
          label="Publish Library Only"
          state={workspace.publishLibraryOnly}
        />
      </section>
    </ScreenShell>
  );
}
