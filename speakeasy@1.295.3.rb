# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12953 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.295.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.295.3/speakeasy_darwin_amd64.zip"
      sha256 "c78ddeb5d724df563ae3bb986ba8fa8b8ab629921649450d1766d64c01757dbe"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.295.3/speakeasy_darwin_arm64.zip"
      sha256 "a6d58f04f4504de0214df1c2deb15b7f6a75d117a634d98ac20e18b16ef3be42"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.295.3/speakeasy_linux_amd64.zip"
        sha256 "bf8ffca6977dcc4b849bf6fdf10e1e172ff38ddb2868a06244c9273bc6c2616c"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.295.3/speakeasy_linux_arm64.zip"
        sha256 "c2f2fc3f5a6d1f4c5b8561928a800d065b84387aa330e54974590030d4fa39d7"

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
