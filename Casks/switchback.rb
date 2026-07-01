cask "switchback" do
  version "0.1.1"
  sha256 "515e36c7a2cd475d9014868d52da56898d2b3a12916be54bd4dd8dbd7db703bc"

  url "https://github.com/breed007/switchback-macos/releases/download/v#{version}/Switchback-v#{version}-universal.zip"
  name "Switchback"
  desc "Switch between network locations from the menu bar"
  homepage "https://github.com/breed007/switchback-macos"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Switchback.app"

  zap trash: "~/Library/Preferences/com.breed007.switchback.plist"
end
