function Open-MSOLConnection
{
  <#
    .SYNOPSIS
    Connects and loads a MSOL PoSH Connection.
    .DESCRIPTION
    Gets credential for MSOL Session, configures a new session and loads it.
    .EXAMPLE
    Open-MSOLConnection
    #>
  $LiveCred = Get-Credential
  $Session = New-PSSession -Name MSOL -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/powershell/ -Credential $LiveCred -Authentication Basic -AllowRedirection
  Import-PSSession $Session
  connect-msolservice -credential $LiveCred
}