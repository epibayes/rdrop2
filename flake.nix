{
  description = "Personal R package (fork): rdrop2";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = {self, nixpkgs }: {
    packages.x86_64-darwin.default = nixpkgs.86_64-darwin.rPackages.buildRPackage {
      name = "rdrop2";
      src = nixpkgs.legacyPackages.x86_64-linux.pkgs.fetchgit {
        name = "rdrop2-source";
        url = "git+ssh://krzysztof@fawkes.io:2222/data/git/git/rdrop2?shallow=1";
        rev = "3e617bea72ed0d53a8d4f738f0efc90ed77f2548";
        sha256 = "sha256-5rLdk4ZNyueWqBC0KzLaZAd0QO2cgtWIJvzHcSjwoUA=";
      };
      propagatedBuildInputs = with nixpkgs.legacyPackages.x86_64-darwin.rPackages; [
        digest
        dplyr
        httr
        jsonlite
        magrittr
        purrr
        assertthat
      ];
    };
  };
}
