cask "mojo-pulse" do
  version "1.11.0"
  sha256 "b5804bc59f018fc26d0f8f92ff4694e51f6378e26feb19a4ecf9eb93b3b77928"

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
