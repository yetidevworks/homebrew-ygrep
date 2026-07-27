# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.5.1-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.5.1-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.5.1-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.5.1/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.5.1"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.5.1/ygrep-3.5.1-darwin-arm64.tar.gz"
      sha256 "2417a2548b9ac597e1faf77645b2f9e0ba6ad0edb3e4432e62ec3eb04e37eb5c"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.5.1/ygrep-3.5.1-darwin-x86_64.tar.gz"
      sha256 "62d28de2e1780f43f1f95ced2c877c078cb09f0fdd66e9f70bb02ecec08409ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.5.1/ygrep-3.5.1-linux-x86_64.tar.gz"
      sha256 "4f70587898887490eb488ea0b852d10eba0b2b555d369b35b8c548405514a42d"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.5.1/ygrep-3.5.1-linux-aarch64.tar.gz"
      sha256 "897b22814a986b1d6b76f1b37702148e7d8af475113db8ede6ac901af7ef2da9"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
