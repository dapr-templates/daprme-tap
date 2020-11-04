class Daprme < Formula
  desc "New app wizard for creation of a new Dapr project"
  homepage "https://dapr.io"
  url "https://github.com/dapr-templates/daprme/releases/download/v0.6.2/daprme"
  sha256 "6fa9b8372845e96ca70a03f9d53480b3917ccf3ab8ea1ba15fbeed681906466a"
  license "MIT"

  def install
    bin.install "daprme" => "daprme"
  end

  test do
    system "#{bin}/daprme", "--version"
  end
end
