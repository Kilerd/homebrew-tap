cask "anystorage" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.24"
  sha256 arm:   "27be06cea3e36e300d092259f949c530a252b21fe6429656d8048ffd8f0b9a6b",
         intel: "5866a68aa6c0a23532fc08c6a140c2ae0aee29513f862530e4653fa6ebab97df"

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
