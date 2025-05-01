{ fetchFromGitHub, pkgs ? import <nixpkgs> {} }:
let manifest = (pkgs.lib.importTOML ./Cargo.toml).package;
in
pkgs.rustPlatform.buildRustPackage {
    pname = manifest.name;
    version = manifest.version;

    cargoLock.lockFile = ./Cargo.lock;

    src = fetchFromGitHub {
        owner = "kristansvanholm";
        repo = "zz";
        rev = "5364c425a9216622c9e6a5322f886ec94d87742b";
        sha256 = pkgs.lib.fakeSha256;
    };
}
