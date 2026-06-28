class Yom < Formula
  desc "lightweight, non-interactive micro-shell and systems glue"
  homepage "https://github.com/G0o53/yom"
  url "https://github.com/G0o53/yom.git", tag: "1.2.4"
  head "https://github.com/G0o53/yom.git", branch: "master"
  license "MIT"

  def install
    user_home = ENV["HOME"] || File.expand_path("~")
    rustup_bin = "#{user_home}/.cargo/bin"

    ENV.prepend_path "PATH", rustup_bin

    if which("cargo").nil?
      odie <<~EOS
        Rust is required to compile yom from source. 
        Please install any version of Rust (we highly recommend rustup: https://rustup.rs) 
        and try installing yom again.
      EOS
    end

    system "make", "homebrew", "PREFIX=#{prefix}"
  end
end

