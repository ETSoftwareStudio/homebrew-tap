cask "open-freematics-emulator" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "16fe569a4b9c046665a7e707e0843f8a5139f4a28a2cd963a1d5c9e25e320386",
         intel: "ce7ef8004c17da3f58796ea84eab9c62aefeaee20594fcadf1d899af36261f17"

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
