cask "grayscale" do
  version "0.3"
  sha256 "436b34b046e812f6a44c8186daf6dd4fbfd7081f06b8589c43d22beb0065ecfe"

  url "https://github.com/brettferdosi/grayscale/releases/download/v#{version}/grayscale.app.zip"
  name "grayscale"
  desc "macOS status bar app for managing the system grayscale display filter"
  homepage "https://github.com/brettferdosi/grayscale/"
  livecheck do
    url "https://github.com/brettferdosi/grayscale/releases.atom"
  end

  app "grayscale.app"
end
