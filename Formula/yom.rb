class Yom < Formula
  desc "lightweight, non-interactive micro-shell and systems glue"
  homepage "https://github.com/G0o53/yom"
  url "https://github.com/G0o53/yom.git", tag: "1.2.4"
  head "https://github.com/G0o53/yom.git", branch: "master"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "make", "homebrew", "PREFIX=#{prefix}"
  end
end
