import type { AssetSummaryViewModel } from "../../contracts/ui-types";
import { ScreenShell } from "../../components/common/ScreenShell";
import { LibraryShelf } from "../../components/library/LibraryShelf";

export interface ContinueViewingScreenProps {
  items: AssetSummaryViewModel[];
}

export function ContinueViewingScreen(props: ContinueViewingScreenProps) {
  return (
    <ScreenShell
      shell={{
        title: "Continue Viewing",
        loadState: props.items.length === 0 ? "empty" : "ready",
      }}
    >
      <LibraryShelf title="Continue Viewing" items={props.items} />
    </ScreenShell>
  );
}
