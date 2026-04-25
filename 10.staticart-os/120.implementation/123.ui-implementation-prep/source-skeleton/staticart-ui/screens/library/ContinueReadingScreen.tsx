import type { AssetSummaryViewModel } from "../../contracts/ui-types";
import { ScreenShell } from "../../components/common/ScreenShell";
import { LibraryShelf } from "../../components/library/LibraryShelf";

export interface ContinueReadingScreenProps {
  items: AssetSummaryViewModel[];
}

export function ContinueReadingScreen(props: ContinueReadingScreenProps) {
  return (
    <ScreenShell
      shell={{
        title: "Continue Reading",
        loadState: props.items.length === 0 ? "empty" : "ready",
      }}
    >
      <LibraryShelf title="Continue Reading" items={props.items} />
    </ScreenShell>
  );
}
