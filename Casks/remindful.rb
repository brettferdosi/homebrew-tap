cask "remindful" do
  version "0.2"
  sha256 "7f82404b6f1e2eab92a1005622c3505caf695df16129fa664a4c2522441d3571"

  url "https://github.com/brettferdosi/remindful/releases/download/v#{version}/remindful.app.zip"
  appcast "https://github.com/brettferdosi/remindful/releases.atom"
  name "remindful"
  desc "macOS status bar app for firm but gentle periodic reminders"
  homepage "https://github.com/brettferdosi/remindful/"

  app "remindful.app"
end
