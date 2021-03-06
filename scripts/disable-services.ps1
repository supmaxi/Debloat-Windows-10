#   Description:
# This script disables unwanted Windows services. If you do not want to disable
# certain services comment out the corresponding lines below.

$services = @(
    "diagnosticshub.standardcollector.service" # Microsoft (R) Diagnostics Hub Standard Collector Service
    "DiagTrack"                                # Diagnostics Tracking Service
    "dmwappushservice"                         # WAP Push Message Routing Service (see known issues)
    "HomeGroupListener"                        # HomeGroup Listener
    "HomeGroupProvider"                        # HomeGroup Provider
    "lfsvc"                                    # Geolocation Service
    "MapsBroker"                               # Downloaded Maps Manager
    "NetTcpPortSharing"                        # Net.Tcp Port Sharing Service
    "RemoteAccess"                             # Routing and Remote Access
    "RemoteRegistry"                           # Remote Registry
    "SharedAccess"                             # Internet Connection Sharing (ICS)
    "TrkWks"                                   # Distributed Link Tracking Client
    "WbioSrvc"                                 # Windows Biometric Service (required for Fingerprint reader / facial detection)
    #"WlanSvc"                                 # WLAN AutoConfig
    #"NcdAutoSetup"                            # Network Connected Devices Auto-Setup
    #"bthserv"                                 # Bluetooth Support Service
    #"BthAvctpSvc"                             # AVCTP service Audio Video Control Transport Protocol service (BT)
    #"BTAGService"                             # Bluetooth Audio Gateway Service
    "WMPNetworkSvc"                            # Windows Media Player Network Sharing Service
    "wscsvc"                                   # Windows Security Center Service
    "ndu"                                      # Windows Network Data Usage Monitor
    "SSDPSRV"                                  #SSDP Discovery
    "lltdsvc"                                  #Link-Layer Topology Discovery Mapper
    "AXInstSV"                                 #ActiveX Installer
    "AJRouter"                                 #AllJoyn Router Service
    "AppReadiness"                             #App Readiness
    "wlidsvc"                                  #Microsoft Account Sign-in Assistant
    "SmsRouter"                                #Microsoft Windows SMS
    "NcdAutoSetup"                             #Network Connected Devicees Auto-Setup
    "PNRPsvc"                                  #Peer Name Resolution Protocol
    "p2psvc"                                   #Peer Networking Group
    "p2pimsvc"                                 #Peer Networking Identity Manager
    "PNRPAutoReg"                              #PNRP Machine Name Publication Service
    "WalletService"                            #WalletService
    "WMPNetworkSvc"                            #Windows Media Player Network Sharing Service
    "icssvc"                                   #Internet Connection Sharing Service
    "XblAuthManager"                           #Xbox Live Auth Manager
    "XblGameSave"                              #Xbox Live Game Save
    "XboxNetApiSvc"                            #Xbox Net Api
    "XboxGipSvc"                               #Xbox Accessory Management Service
    "DmEnrollmentSvc"                          #Device Management Enrollment Service
    "RetailDemo"                               #Retail Demo
    "LanmanServer"                             #File Print Network Sharing
    "LanmanWorkstation"                        #Workstation - Remote Server SMB
    "LanmanServer"                             #Server
    "seclogon"                                 #Secondary Logon
    "fhsvc"                                    #File History Service
    "CscService"                               #Offline Files
    "WbioSrvc"                                 #Windows Biometric Service
    "Wecsvc"                                   #Windows Event Collector
    "WpcMonSvc"                                #Parental Controls
    "WinRM"                                    #Windows Remote Management (WS-Management)
    "wcncsvc"                                  #Windows Connect Now
    "wbengine"                                 #Block Level Backup Engine Service
    "vmicvss"                                  #Hyper-V Volume Shadow Copy Requestor
    "vmicvmsession"                            #Hyper-V PowerShell Direct Service
    "vmictimesync"                             #Hyper-V Time Synchronization Service
    "vmicshutdown"                             #Hyper-V Guest Shutdown Service
    "vmicrdv"                                  #Hyper-V Remote Desktop Virtualization Service
    "vmickvpexchange"                          #Hyper-V Data Exchange Service
    "vmicheartbeat"                            #Hyper-V Heartbeat Service
    "vmicguestinterface"                       #Hyper-V Guest Service Interface
    "HvHost"                                   #HV Host Service
    "AppVClient"                               #Microsoft App-V Client
    "upnphost"                                 #UPnP Device Host
    "UevAgentService"                          #User Experience Virtualization Service
    "TrkWks"                                   #Distributed Link Tracking Client
    "TapiSrv"                                  #Telephony (API)
    "swprv"                                    #Microsoft Software Shadow Copy Provider
    "stisvc"                                   #Windows Image Acquisition (WIA)
    "SNMPTRAP"                                 #SNMP Trap
    "smphost"                                  #Microsoft Storage Spaces SMP
    "SensrSvc"                                 #Sensor Monitoring Service
    "Sense"                                    #Windows Defender Advanced Threat Protection Service
    "SEMgrSvc"                                 #Payments and NFC/SE Manager
    "SDRSVC"                                   #Windows Backup
    "SCPolicySvc"                              #Smart Card Removal Policy
    "ScDeviceEnum"                             #Smart Card Device Enumeration Service
    "SCardSvr"                                 #Smart Card
    "RasMan"                                   #Remote Access Connection Manager
    "RasAuto"                                  #Remote Access Auto Connection Manager
    "PushToInstall"                            #Windows PushToInstall Service
    "PolicyAgent"                              #IPsec Policy Agent
    "PhoneSvc"                                 #Phone Service
    "PeerDistSvc"                              #BranchCache
    "NVDisplay.ContainerLocalSystem"           #Container service for NVIDIA root features
    "NvContainerNetworkService"                #Container service for NVIDIA network features
    "NvContainerLocalSystem"                   #Container service for NVIDIA root features
    "NgcSvc"                                   #Microsoft Passport
    "NgcCtnrSvc"                               #Microsoft Passport Container
    "Netlogon"                                 #Netlogon domain controller services
    "NaturalAuthentication"                    #Natural Authentication evaluates signals based on time, network, geolocation, bluetooth
    "MSiSCSI"                                  #Microsoft iSCSI Initiator Service
    "MapsBroker"                               #Downloaded Maps Manager
    "lmhosts"                                  #TCP/IP NetBIOS Helper
    "LicenseManager"                           #Windows License Manager Service
    "ITBMService"                              #Intel(R) Turbo Boost Max 3.0 Technology Application Service
    "irmon"                                    #Infrared monitor service
    "IpxlatCfgSvc"                             #IP Translation Configuration Service from v4 to v6 and vice versa
    "iphlpsvc"                                 #IP Helper (6to4, ISATAP, Port Proxy, and Teredo), and IP-HTTPS. 
    "InstallService"                           #Microsoft Store Install Service
    "IKEEXT"                                   #IKE and AuthIP IPsec Keying Modules
    "FrameServer"                              #Windows Camera Frame Server
    "FontCache"                                #Windows Font Cache Service
    "fhsvc"                                    #File History Service 
    "embeddedmode"                             #Embedded Mode service enables scenarios related to Background Applications
    "DsSvc"                                    #Data Sharing Service
    "CscService"                               #Offline Files
    "camsvc"                                   #Capability Access Manager Service
    "Browser"                                  #unknown
    "BDESVC"                                   #BitLocker Drive Encryption Service
    "tiledatamodelsvc"                         #Tile Data
    "cbdhsvc"                                  #Clipboard User Service
    "ConsentUxUserSvc"                         #Allows ConnectUX and PC Settings to Connect and Pair with WiFi displays and Bluetooth devices.
    "UnistackSvcGroup"                         #hidden services that apparently register and start a subprocess per user as a service
    "UnistoreSvc"                              #hidden services that apparently register and start a subprocess per user as a service
    "BluetoothUserService"                     #hidden services that apparently register and start a subprocess per user as a service
    "CDPUserSvc"                               #hidden services that apparently register and start a subprocess per user as a service
    "CaptureService"                           #hidden services that apparently register and start a subprocess per user as a service
    "DevicePickerUserSvc"                      #hidden services that apparently register and start a subprocess per user as a service
    "DevicesFlowUserSvc"                       #hidden services that apparently register and start a subprocess per user as a service
    "MessagingService"                         #hidden services that apparently register and start a subprocess per user as a service
    "PimIndexMaintenanceSvc"                   #hidden services that apparently register and start a subprocess per user as a service
    "BcastDVRUserService"                      #hidden services that apparently register and start a subprocess per user as a service
    "PrintWorkflowUserSvc"                     #hidden services that apparently register and start a subprocess per user as a service
    "UserDataSvc"                              #hidden services that apparently register and start a subprocess per user as a service
    "OneSyncSvc"                               #hidden services that apparently register and start a subprocess per user as a service
    "WpnUserService"                           #hidden services that apparently register and start a subprocess per user as a service
    "UnistoreSvc"                              #hidden services that apparently register and start a subprocess per user as a service
    
    # Services which cannot be disabled
    #"WdNisSvc"
)

foreach ($service in $services) {
    Write-Output "Trying to disable $service"
    Get-Service -Name $service | Set-Service -StartupType Disabled
}
