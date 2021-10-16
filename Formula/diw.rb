class Diw < Formula
  desc "DIW is a CLI utility helper tool."
  homepage "https://dasistweb.de"
  url "https://github.com/MarcoFaul/diw/releases/download/v0.9.4.5/diw-0.9.4.5.tar.gz"
  version "0.9.4.5"
  sha256 "fc887bf1fdc2b9ab7bd8866c877068d0c4a765a7c0f49f692fcf6a8328bd18a8"

  def install
    prefix.install Dir["*"]
  end

  def post_install
    if !(File.exist?((etc/"diw-override.config.yaml"))) then
      (etc/"diw-override.config.yaml").write override_conf
    end
  end

  def override_conf; <<~EOS
  EOS
  end

  def caveats
    <<~EOS
      Diw is a CLI utility helper tool made for DIW

      To start diw simply run:

            diw

        Documentation is available at: https://diw-tool.netlify.app/
        Created by Marco Faul
    EOS
  end

    test do
      system "#{bin}/diw"
    end
end
