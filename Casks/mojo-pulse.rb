cask "mojo-pulse" do
  version "1.22.0"
  sha256 "6719d3d0b6f8ac87332e3c21fb4c4b491d4726823255a77294230e729473fc38"

  url "https://github.com/NativeMojo/mojo-pulse/releases/download/v#{version}/MojoPulse-#{version}.dmg"
  name "Mojo Pulse"
  desc "Menu-bar system monitor and security-posture watcher"
  homepage "https://mojopulse.io/"

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
