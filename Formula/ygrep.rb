# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.1.5-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.1.5-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.1.5-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.1.5/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.1.5"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.5/ygrep-3.1.5-darwin-arm64.tar.gz"
      sha256 "eac0922d300e6cb0eb2c480df7155878f8e3d76e6350e5939812c8e6c6cd0e36"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.5/ygrep-3.1.5-darwin-x86_64.tar.gz"
      sha256 "7d7dba244b98f6e7fa2e14c35f1e16bdc656441bd42c7114e127c37d8c14912a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.5/ygrep-3.1.5-linux-x86_64.tar.gz"
      sha256 "6487294c25672899b2a41e36b88b0bac761e83e5d81575274346e2b05fe3b026"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.5/ygrep-3.1.5-linux-aarch64.tar.gz"
      sha256 "e49f8e289af94eb49d1a8c1c23b94425ea57c330ee3c86f87c5949778cf7dc9e"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
