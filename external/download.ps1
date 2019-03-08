# Include functions.
. .\functions.ps1

$packages = @(@{ name = "arithmetic-functors"; version = "2.3" }, 
              @{ name = "errors"; version = "1.5" };
              @{ name = "byte-orders"; version="1.5"},
              @{ name = "relational-functors"; version="1.8"},
              @{ name = "one-zero-functors"; version="1.5"},
              @{ name = "math-scalars"; version="1.4"},
              @{ name = "functors"; version="1.3"});

foreach($package in $packages) {
  Download -PackageName $package['name'] -Version $package['version']
}
