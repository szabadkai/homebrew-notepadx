cask "notepadx" do
  version "1.0.6"

  on_intel do
    url "https://github.com/szabadkai/NotepadX/releases/download/v#{version}/NotepadX-macos-x86_64.zip"
    sha256 "PLACEHOLDER_INTEL_SHA256"
  end

  on_arm do
    url "https://github.com/szabadkai/NotepadX/releases/download/v#{version}/NotepadX-macos-arm64.zip"
    sha256 "PLACEHOLDER_ARM_SHA256"
  end

  name "NotepadX"
  desc "Fast, beautiful, cross-platform text editor"
  homepage "https://github.com/szabadkai/NotepadX"

  depends_on macos: ">= :big_sur"

  app "NotepadX.app"

  zap trash: [
    "~/Library/Preferences/com.notepadx.app.plist",
    "~/Library/Application Support/NotepadX",
  ]
end
