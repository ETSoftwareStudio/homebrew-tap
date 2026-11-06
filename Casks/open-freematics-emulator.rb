cask "open-freematics-emulator" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "c81667801c2617a9667c94b4599f771e08d62ca384f66a71c44bade5a1753fca",
         intel: "7a428f193ea2b9a0632d0f1a0f9227a3f0b9d563ded3e3331ac0e2137e904c9f"

  url "https://github.com/ETSoftwareStudio/open-freematics-emulator/releases/download/v#{version}/open-freematics-emulator-#{version}-mac-#{arch}.dmg"
  name "Open Freematics Emulator"
  desc "Open-source app for the Freematics OBD-II Emulator MK2 (unofficial)"
  homepage "https://github.com/ETSoftwareStudio/open-freematics-emulator"

  depends_on macos: ">= :monterey"

  app "Open Freematics Emulator.app"

  zap trash: [
    "~/Library/Application Support/Open Freematics Emulator",
    "~/Library/Logs/Open Freematics Emulator",
    "~/Library/Preferences/studio.etsoftware.open-freematics-emulator.plist",
    "~/Library/Saved Application State/studio.etsoftware.open-freematics-emulator.savedState",
  ]
end
