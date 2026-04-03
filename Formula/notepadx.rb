class Notepadx < Formula
  desc "Fast, beautiful, cross-platform text editor"
  homepage "https://github.com/szabadkai/NotepadX"
  url "https://github.com/szabadkai/NotepadX/archive/refs/tags/v1.3.2.tar.gz"
  sha256 "af058f918c00a5d93d21ed94efb51dfaa1ddda7a03277ef6a64863e5bddb7012"
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
