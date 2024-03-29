# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11938 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.193.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.193.8/speakeasy_darwin_arm64.zip"
      sha256 "221acf34f0ecb58bb0ad26412bb8b416123218630127b2e71cd304b93ff9fe37"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.193.8/speakeasy_darwin_amd64.zip"
      sha256 "b8fd169a70910893bb7cf46461fcb9beabb9aacadd5fb81ffb8be80870b65730"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.193.8/speakeasy_linux_arm64.zip"
      sha256 "35f7fe920fc0250931cdec1828bf59e8f2058da979308ad7cbeed41417b3be17"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.193.8/speakeasy_linux_amd64.zip"
      sha256 "9d79850dd6c338714fe2b1fd9368a9a8aac6c29ece207b04f3cdd4bad22db04a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
