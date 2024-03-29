# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1461 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.46.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.46.1/speakeasy_darwin_amd64.zip"
      sha256 "0e13614b6e9227c064b7762fbd591395f3929e6a8fdd3768e930fabf4bc9f839"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.46.1/speakeasy_darwin_arm64.zip"
      sha256 "903355c7db58fabf418f833ab1faebec89bdb681e09fe33ae8ba1c6e22af3a2c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.46.1/speakeasy_linux_amd64.zip"
      sha256 "5375011b238f15b9c27d2e34c7fa6caf0573360b4f5adfd20f79b9f349a7a2af"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.46.1/speakeasy_linux_arm64.zip"
      sha256 "08c4ee5992d7e64e4519d992e635efcf28a83f5ab2f552091fae5b7300619f39"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
