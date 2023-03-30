cask "remindful" do
  version "0.3"
  sha256 "e5a883f04e6c02222eedd9f12766d3e4bdd8202a116dda282d3b805046519298"

  url "https://github.com/brettferdosi/remindful/releases/download/v#{version}/remindful.app.zip"
  appcast "https://github.com/brettferdosi/remindful/releases.atom"
  name "remindful"
  desc "macOS status bar app for firm but gentle periodic reminders"
  homepage "https://github.com/brettferdosi/remindful/"

  app "remindful.app"
end
