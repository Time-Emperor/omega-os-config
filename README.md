-OmegaOS (2025-12-31)

OmegaOS is a performance-tuned, Arch-based Linux distribution featuring the KDE Plasma desktop environment. It is built to provide out-of-the-box hardware acceleration for modern laptops, specifically those with AMD/Nvidia hybrid graphics.

-System Specifications

Base OS: Arch Linux

Kernel: 6.12.63-1-lts (Long Term Support)

Desktop Environment: KDE Plasma (Breeze-Dark theme)

ISO Size: 2.7 GB

-Hardware & Driver Support

This build includes pre-configured drivers for high-performance computing and gaming:

Nvidia Support: Includes nvidia-dkms and nvidia-utils for RTX 40-series cards.

AMD/Intel Vulkan: vulkan-radeon and vulkan-intel are pre-installed for integrated graphics support.

Gaming: steam, lib32-mesa, and lib32-nvidia-utils are included for 32-bit application compatibility.

-Installation

Download: Grab the latest .iso from the Releases section.

Verify: Check the file integrity using the hash provided below.

Flash: Use a tool like dd or Ventoy to write the ISO to a USB drive (minimum 4GB).

# Example using dd (replace /dev/sdX with your USB device)
sudo dd if=omega-os-2025.12.31-x86_64.iso of=/dev/sdX bs=4M status=progress

-Integrity Check

Always verify your download to ensure the file is not corrupted:

SHA256: f4206897f01b79cb56b600865d32873d71f5ff94837af40016cc1dff592cd8e5
