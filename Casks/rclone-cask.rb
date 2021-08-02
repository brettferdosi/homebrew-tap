cask "rclone-cask" do
  version "1.56.0" # update sha256 hashes with version

  if Hardware::CPU.intel?
    sha256 "d079a0e04f148d409c460742d2a5d740a0a405f4a77d7cf0878becdcc0488bbd"
    binary "rclone-v#{version}-osx-amd64/rclone"
    manpage "rclone-v#{version}-osx-amd64/rclone.1"
    url "https://github.com/rclone/rclone/releases/download/v#{version}/rclone-v#{version}-osx-amd64.zip",
      verified: "github.com/rclone/rclone/"
  else
    # arm version untested
    sha256 "4effd67edbd0e9e5894223df9ce97c635e2056db54bd0cf602fa00a99c27eef3"
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
