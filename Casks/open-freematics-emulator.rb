cask "open-freematics-emulator" do
  arch arm: "arm64", intel: "x64"

  version "1.0.2"
  sha256 arm:   "7e53e4ba220c2a5a8a1b1a0c29ad744e35eba0d2fdd619518152684ec775767e",
         intel: "557ead87b2e1934a95be9271a8daab77f03241e32a8bd6cd04fe30593276617d"

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
