# script to paste AWS Academy credentials into lab

$Credentials = Get-Clipboard 

if ( $Credentials -notlike '*aws_access_key_id*' ) {
    Write-Error "clipboard content is not aws credentials"
    Return
}

$Credentials | Out-File ~/.aws/credentials -Encoding ascii

Write-Host pasted into credentials file