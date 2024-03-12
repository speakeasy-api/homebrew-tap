# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12060 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.206.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.206.0/speakeasy_darwin_arm64.zip"
      sha256 "4183ebf420ccfeb82bf6419c28afb5a4d990db9c70e25220de59202823b339ec"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.206.0/speakeasy_darwin_amd64.zip"
      sha256 "a36c5f8cf8fd3aebb7b1e418a6dec115f570985d6874295c82f6ca7dfc32efbd"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.206.0/speakeasy_linux_arm64.zip"
      sha256 "6706545cd1c13296ca911b3a6ba8db1e3331d5b24fa6a6615c27a9dee425d145"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.206.0/speakeasy_linux_amd64.zip"
      sha256 "f2be95252b4c0fc32c25c367fba317caf57c992d31a6ebb5cbdeff2996d4cf2a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
