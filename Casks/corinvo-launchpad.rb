cask "corinvo-launchpad" do
  version "1.0.0"
  arch arm: "arm64", intel: "amd64"

  pkg "launchpad.pkg"

  uninstall script: {
    executable: "uninstall.tool",
    input: ["Yes"],
    sudo:  true,
  },
  pkgutil: "com.corinvo.launchpad"
end
