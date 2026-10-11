cask "anystorage" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.27"
  sha256 arm:   "aa0085f1e1d5ebfd8510ae30908f8e536f9cd6f5d642740cdfe07bf21c313874",
         intel: "6ac69a920184353dbb34cc72537743263631e266d34282ac1f976381bd78cfcc"

  url "https://github.com/Kilerd/anystorage-release/releases/download/v#{version}/AnyStorage_#{version}_#{arch}.dmg"
  name "AnyStorage"
  desc "Desktop client for object storage, cloud drives, WebDAV, FTP and SFTP"
  homepage "https://anystorage.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "AnyStorage.app"

  zap trash: [
    "~/Library/Application Support/com.anystorage.app",
    "~/Library/Caches/anystorage",
    "~/Library/Caches/com.anystorage.app",
    "~/Library/Preferences/com.anystorage.app.plist",
    "~/Library/Saved Application State/com.anystorage.app.savedState",
    "~/Library/WebKit/anystorage",
    "~/Library/WebKit/com.anystorage.app",
  ]
end
