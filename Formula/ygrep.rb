# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.1.2-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.1.2-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.1.2-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.1.2/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.1.2"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.2/ygrep-3.1.2-darwin-arm64.tar.gz"
      sha256 "e5e46686060f44b7b6724d0dd834716eaeeaac3e6fa82a2939e88254ecdc3144"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.2/ygrep-3.1.2-darwin-x86_64.tar.gz"
      sha256 "ebfa4c79729a80739dd057486a0a43a32ed4528770534b3dd58877fed1c32f43"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.2/ygrep-3.1.2-linux-x86_64.tar.gz"
      sha256 "8f050af7a3878fc2979f01c57d58cb8ca7b2fa3474471369946e84927dc861a0"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.2/ygrep-3.1.2-linux-aarch64.tar.gz"
      sha256 "7ce798088b19ecbebcd0f339c87022ca4ea311d850b5377585f497caaa68511c"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
