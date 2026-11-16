cask "open-freematics-emulator" do
  arch arm: "arm64", intel: "x64"

  version "1.1.1"
  sha256 arm:   "9a4fbbd2b3f2702fbb2b8088aa7d361da67b732ddb63b18990ea2dd04e6c0ff6",
         intel: "999c7bd48c736399e98dd0ff63bebf3ecb1efd3572d9106d247bafa591b874fa"

  url "https://github.com/ETSoftwareStudio/open-freematics-emulator/releases/download/v#{version}/open-freematics-emulator-#{version}-mac-#{arch}.dmg"
  name "Open Freematics Emulator"
  desc "Open-source app for the Freematics OBD-II Emulator MK2 (unofficial)"
  homepage "https://github.com/ETSoftwareStudio/open-freematics-emulator"

  depends_on macos: ">= :monterey"

  app "Open Freematics Emulator.app"

  zap trash: [
    "~/Library/Application Support/Open Freematics Emulator",
    "~/Library/Caches/studio.etsoftware.open-freematics-emulator",
    "~/Library/Preferences/studio.etsoftware.open-freematics-emulator.plist",
    "~/Library/Saved Application State/studio.etsoftware.open-freematics-emulator.savedState",
    "~/Library/WebKit/studio.etsoftware.open-freematics-emulator",
  ]
end
