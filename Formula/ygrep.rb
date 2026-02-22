# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.1.4-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.1.4-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.1.4-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.1.4/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.1.4"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.4/ygrep-3.1.4-darwin-arm64.tar.gz"
      sha256 "844cf2ae799124fabe3a9a7b785b1cd1c1cfcd89c30bdf2390cf779b2f7d4adb"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.4/ygrep-3.1.4-darwin-x86_64.tar.gz"
      sha256 "1c238042af4f638ebca1237309ee1b1e91abc1c811fef495e168dfdfb3aac73b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.4/ygrep-3.1.4-linux-x86_64.tar.gz"
      sha256 "a0c6dbc9f8e3fffb6227696bdb371552c8af045c4a97b6d02f584c08c9d28e97"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.4/ygrep-3.1.4-linux-aarch64.tar.gz"
      sha256 "228bab1661b4dbdddbdc5c930e52942a5542e52db9711bb9efd1af36f3e0e026"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
