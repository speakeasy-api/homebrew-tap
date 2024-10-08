# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14121 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.412.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.412.1/speakeasy_darwin_amd64.zip"
      sha256 "13c6b41338fc27677276dacc4605d115eda41e07f4c5d266f6e72fc82f1463d7"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.412.1/speakeasy_darwin_arm64.zip"
      sha256 "7be74f571c56023877b2eb2ba6bdbd4cd9233222fa80d6dfdcac9ed1fed553dd"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.412.1/speakeasy_linux_amd64.zip"
        sha256 "37c54a48aa59c362ecc70454f17d3e0ce2a0036efba72a0e6f215198285670cb"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.412.1/speakeasy_linux_arm64.zip"
        sha256 "043130bf1e231ecf3b3db9488faaa845f03de72f50b6ab3e306fbba44f9fe82e"

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
