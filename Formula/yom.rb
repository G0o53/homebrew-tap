class Yom < Formula
  desc "lightweight, non-interactive micro-shell and systems glue"
  homepage "https://github.com/G0o53/yom"
  url "https://github.com/G0o53/yom.git", tag: "1.2.0"
  head "https://github.com/G0o53/yom.git", branch: "master"
  license "MIT"

  def install
    if which("cargo").nil?
      odie <<~EOS
        Error: Rust is required to compile yom from source. 
        Please install any version of Rust (we highly recommend rustup: https://rustup.rs) 
        and try installing yom again.
      EOS
    end

    system "make", "homebrew", "PREFIX=#{prefix}"
  end
end
