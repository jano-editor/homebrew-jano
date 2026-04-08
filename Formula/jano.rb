class Jano < Formula
  desc "Terminal editor with plugin-based syntax highlighting and formatting"
  homepage "https://janoeditor.dev"
  version "1.0.0-alpha.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jano-editor/jano/releases/download/editor-v#{version}/jano-darwin-arm64"
      sha256 "343dbb308f1667ae9b0dd3d59c994ca9ef149a1832b593b1eada98b76f6a8156"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jano-editor/jano/releases/download/editor-v#{version}/jano-linux-x64"
      sha256 "3efe5e3a622b9ebed7e50c9070838db285e0779be6f4490e427d61778c54c9de"
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
