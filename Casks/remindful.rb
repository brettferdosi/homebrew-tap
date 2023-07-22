cask "remindful" do
  version "0.4"
  sha256 "19058a8e20d89990a6f8a4b51f3be0ed35a7f99296590f109295b7e10a8f8e12"

  url "https://github.com/brettferdosi/remindful/releases/download/v#{version}/remindful.app.zip"
  name "remindful"
  desc "macOS status bar app for firm but gentle periodic reminders"
  homepage "https://github.com/brettferdosi/remindful/"
  livecheck do
    url "https://github.com/brettferdosi/remindful/releases.atom"
  end

  app "remindful.app"
end
