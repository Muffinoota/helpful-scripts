function windo
{
    If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
    {   
        Start-Process powershell -Verb runAs -ArgumentList "-noexit", "-command $args" 
        Break
    }
}