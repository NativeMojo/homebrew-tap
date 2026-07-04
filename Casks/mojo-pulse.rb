cask "mojo-pulse" do
  version "1.14.0"
  sha256 "4cb886ddafaa57c614d5aebae4d1eee8a6c2c44648e8257c857b474093900a9e"

  url "https://github.com/NativeMojo/mojo-pulse/releases/download/v#{version}/MojoPulse-#{version}.dmg"
  name "Mojo Pulse"
  desc "Menu-bar system monitor and security-posture watcher"
  homepage "https://github.com/NativeMojo/mojo-pulse"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "MojoPulse.app"

  zap trash: [
    "~/Library/Application Support/MojoPulse",
    "~/Library/Caches/com.mojo.pulse",
    "~/Library/HTTPStorages/com.mojo.pulse",
    "~/Library/Preferences/com.mojo.pulse.plist",
    "~/Library/Saved Application State/com.mojo.pulse.savedState",
  ]
end
