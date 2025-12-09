class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "0.1.0"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v0.1.0/ygrep-0.1.0-darwin-arm64.tar.gz"
      sha256 "856acb7b47eb2afaec994b9f3b1f3e572a2823ab675a22396724fa2509ead9e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v0.1.0/ygrep-0.1.0-linux-x86_64.tar.gz"
      sha256 "2e6dee978d8735c9042b527cf134b42bca35d8e4909ed0ab0353f233d5516ace"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
