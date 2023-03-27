cask "rclone-cask" do
  version "1.62.2" # update sha256 hashes with version

  if Hardware::CPU.intel?
    sha256 "afef35513c7ce89e9ed9962e2c44c604587de1faa317d9fd3bf6590dc3be8658"
    binary "rclone-v#{version}-osx-amd64/rclone"
    manpage "rclone-v#{version}-osx-amd64/rclone.1"
    url "https://github.com/rclone/rclone/releases/download/v#{version}/rclone-v#{version}-osx-amd64.zip",
      verified: "github.com/rclone/rclone/"
  else
    sha256 "efb17668ff5bc7cb632ddc85ad0d38b020bed85ca6a2b798a31a61abb32b0516"
    binary "rclone-v#{version}-osx-arm64/rclone"
    manpage "rclone-v#{version}-osx-arm64/rclone.1"
    url "https://github.com/rclone/rclone/releases/download/v#{version}/rclone-v#{version}-osx-arm64.zip",
      verified: "github.com/rclone/rclone/"
  end

  name "rclone-cask"
  desc "rclone cask to work around lack of mount support in the formula version"
  homepage "https://rclone.org/"
  appcast "https://github.com/rclone/rclone/releases.atom"

  depends_on cask: "macfuse"
  conflicts_with formula: "rclone"
end
