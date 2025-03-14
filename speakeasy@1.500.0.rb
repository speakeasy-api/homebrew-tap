# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT15000 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.500.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.500.0/speakeasy_darwin_amd64.zip"
      sha256 "1466a461160ed8460a97684466092d457d093e23bcd2fabaa7a8104ceabc4ef8"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.500.0/speakeasy_darwin_arm64.zip"
      sha256 "ba34ba09cdd5334b1a0b3a557270fcec0085c96ce10f93cf44b217267621c20d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.500.0/speakeasy_linux_amd64.zip"
        sha256 "7769ee9f5b3ec08282d277b950ba6fc496794794db186ce1378002913c851eeb"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.500.0/speakeasy_linux_arm64.zip"
        sha256 "94f9317bc35a7ca1f8a5556112de726a1e680b8779c9740305ead7fd6cea4cde"

        def install
          bin.install "speakeasy"
        end
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
