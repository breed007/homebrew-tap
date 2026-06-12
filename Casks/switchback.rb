cask "switchback" do
  version "0.1.0"
  sha256 "edc894ea420bb1fae8df25509498653504f3e3e7e6f6236da830972fe1d1b5ac"

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
