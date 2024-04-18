Stop-Process -Name vpnui -Force

Start-Sleep -s 30

del "C:\ProgramData\Cisco\Cisco AnyConnect Secure Mobility Client\Profile\*.xml"

Start-Sleep -s 10

copy-item "D:\VPN\AnyConnect_VPN.xml" "C:\ProgramData\Cisco\Cisco AnyConnect Secure Mobility Client\Profile"

Start-Process vpnui.exe -WorkingDirectory "C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client"