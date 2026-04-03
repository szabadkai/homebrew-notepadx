class Notepadx < Formula
  desc "Fast, beautiful, cross-platform text editor"
  homepage "https://github.com/szabadkai/NotepadX"
  url "https://github.com/szabadkai/NotepadX/archive/refs/tags/v1.0.6.tar.gz"
  sha256 "PLACEHOLDER_SOURCE_SHA256"
  license "MIT"

  depends_on "rust" => :build
  depends_on "pkg-config" => :build

  def install
    system "cargo", "build", "--release", "--features", "full-syntax"
    bin.install "target/release/notepadx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/notepadx --version")
  end
end
