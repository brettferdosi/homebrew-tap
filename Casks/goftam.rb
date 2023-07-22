cask "goftam" do
  version "0.3"
  sha256 "fc9868e6873f1a785f5989c9cdf82add8c9f03eaa3ea347da5991ee2f9234d89"

  url "https://github.com/brettferdosi/goftam/releases/download/v#{version}/goftam.app.zip"
  name "goftam"
  desc "transliterating input method for macOS"
  homepage "https://github.com/brettferdosi/goftam/"
  livecheck do
    url "https://github.com/brettferdosi/goftam/releases.atom"
  end

  input_method "goftam.app"

  zap trash: [
    "~/Library/Application Support/in.gutste.inputmethod.goftam"
  ]
end
