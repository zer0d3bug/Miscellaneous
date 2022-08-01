# Checking for the existence of each PowerShell profile files
# 4 PowerShell Profiles
#
# --------------------------------------------------------------------

Foreach ($ProfileFile in $ProfileFiles){
  "Testing $($ProfileFile.Name)"
  $ProfilePath = $ProfileFile.Definition.split('=')[1]
  If (Test-Path $ProfilePath){
    "$($ProfileFile.Name) DOES EXIST"
    "At $ProfilePath"
  }
  Else {
    "$($ProfileFile.Name) DOES NOT EXIST"
  }
  ""
}
