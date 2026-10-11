$apps = @(
    "ImputNet.Helium",
    "Neovim.Neovim",
    "Spotify.Spotify",
    "7zip.7zip",
    "Transmission.Transmission",
    "Obsidian.Obsidian",
    "Telegram.TelegramDesktop",
    "Valve.Steam",
    "ShareX.ShareX",
    "Discord.Discord",
    "Microsoft.VisualStudioCode",
    "ZedIndustries.Zed",
    "Git.Git"
    "Raycast.Raycast",
    "Meld.Meld",
    "VideoLAN.VLC",
    "KDE.Okular",
    "flux.flux",
    "Figma.Figma",
    "Figma.FigmaAgent",
    "Canva.Affinity",
    "Microsoft.Office",
    "AdoptOpenJDK.OpenJDK.25",
    "9P8LTPGCBZXD",
    "Microsoft.PowerToys",
    "Adobe.Acrobat.Reader.64-bit",
    "Nvidia.GeForceNow",
    "XP9KHM4BK9FZ7Q",
    "9NP83LWLPZ9K", 
    "9P3JFR0CLLL6",
    "Microsoft.DotNet.SDK.8",
    "Microsoft.DotNet.SDK.6",
    "Microsoft.DotNet.SDK.5",
    "Microsoft.DotNet.Runtime.3_1",
    "Microsoft.DotNet.Framework.DeveloperPack_4",
    "JetBrains.Rider",
    "JetBrains.WebStorm",
    "JetBrains.Toolbox",
    "PrismLauncher.PrismLauncher"
    "Modrinth.ModrinthApp",
    "OBSProject.OBSStudio",
    "Guru3D.Afterburner",
    "Audacity.Audacity",
    "AntibodySoftware.WizTree"
    "voidtools.Everything",
    "CPUID.CPU-Z",
    "CPUID.HWMonitor",
    "CrystalDewWorld.CrystalDiskInfo.ShizukuEdition",
    "CrystalDewWorld.CrystalDiskMark.ShizukuEdition",
    "Zoom.Zoom",
    "Apple.iTunes",
    "Apple.iCloud",
    "Apple.Bonjour",
    "Logitech.OnboardMemoryManager",
    "Logitech.OptionsPlus",
    "ppy.osu",
    "XPDM1ZW6815MQM",
    "9NBLGGH33N0N",
    "Parsec.Parsec",
)

foreach ($app in $apps) {
    Write-Host "Installing $app..."
    winget install --id $app --silent --accept-package-agreements --accept-source-agreements
}

wsl --install
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /V "Startupdelayinmsec" /T REG_DWORD /D 0 /F

