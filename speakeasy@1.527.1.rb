# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT15271 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.527.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.527.1/speakeasy_darwin_amd64.zip"
      sha256 "641c1b57ad3636e743fd9e069b3d9a1049338d8bf8a1212d6f0e2adf72e625b9"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.527.1/speakeasy_darwin_arm64.zip"
      sha256 "4fdad51cefad3e270af0fdfc657ca389eb43cdc7024ec847bd687aad9c8b975b"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.527.1/speakeasy_linux_amd64.zip"
        sha256 "7888e19fd5f879976f9c98d92854b8c874f78aca9d6c15926c03e1387da15836"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.527.1/speakeasy_linux_arm64.zip"
        sha256 "7a67238908769de7b9b1b898b5cbaaab039dd0042663d984e121daa58f38fd8b"

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
