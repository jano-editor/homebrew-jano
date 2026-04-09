class Jano < Formula
  desc "Terminal editor with plugin-based syntax highlighting and formatting"
  homepage "https://janoeditor.dev"
  version "1.0.0-alpha.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jano-editor/jano/releases/download/editor-v#{version}/jano-darwin-arm64"
      sha256 "257c5679bd9e392d53f8f4ff76e09e35217fecf7eb2604f9abf8ef2f949c3638"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jano-editor/jano/releases/download/editor-v#{version}/jano-linux-x64"
      sha256 "0c999b31c2eb8437cfb983b6016216176b58d0fd7bb30f414ed647cb1355295f"
    end
  end

  def install
    binary = stable.url.split("/").last
    bin.install binary => "jano"
  end

  test do
    assert_match "jano v#{version}", shell_output("#{bin}/jano --version")
  end
end
