{
  lib,
  fetchFromGitHub, 
  rustPlatform
}:

rustPlatform.buildRustPackage rec {
    pname = "zz";
    version = "0.1";

    src = fetchFromGitHub {
        owner = "kristansvanholm";
        repo = "${pname}";
        rev = "v${version}";
        hash = "sha256-8WFWqAjdHhq0bjdwWNLwvG6vFWSOkxHW8m+qPt46uuw=";
    };

    cargoLock.lockFile = "${src}/Cargo.lock";

    meta = {
        description = "A CLI tool for calculating optimal times to wake up, if you went to bed right now.";
        homepage = "https://github.com/kristiansvanholm/zz";
    };
}
