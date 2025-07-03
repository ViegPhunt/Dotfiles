{ myPkgs }: myPkgs.stdenv.mkDerivation {
    pname = "pwndbg";
    version = "latest";

    src = myPkgs.fetchFromGitHub {
        owner = "pwndbg";
        repo = "pwndbg";
        rev = "dev";
        sha256 = "sha256-...";
    };

    buildPhase = ''
        ./setup.sh
    '';

    installPhase = ''
        mkdir -p $out
        cp -r * $out/
    '';
}
