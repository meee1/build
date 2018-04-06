1.How to setup the simulator?
  a.Download and install DS-5 from:
    https://developer.arm.com/products/software-development-tools/ds-5-development-studio/downloads
  b.Open Run->Debug Configurations
  c.Double click DS-5 Debugger
  d.Select ARM FVP->MPS2_Cortex_M4->Bare Metal Debug->Debug Cortex-M4
  e.Put out/u1/fvp/nuttx/nuttx in Files tab
  f.Press Debug button at the bottom

2.How to setup the console terminal?
  a.Copy telnet.exe from cygwin's bin to C:\Windows\System32
  b.Add cygwin's bin folder into PATH environment variable
  Note:
  a.Don't use telnet.exe come from Windows installation
  b.Don't input too fast which may make UART overrun
  c.Ubuntu don't need any special setup

3.How to setup semihosting base directory?
  a.Open Run->Debug Configurations
  b.Input this in Bare Metal Debug->Model parameters
    -C armcortexm4ct.semihosting-cwd="d:\\test"
  Note:
  a.We need double \ to disable escape sequence
  b./data and /persist in nuttx will map to this folder

4.How to setup the network?
  a.Open Run->Debug Configurations
  b.Input this in Bare Metal Debug->Model parameters
    -C fvp_mps2.smsc_91c111.enabled=1
  c.For Windows, please follow these links:
    https://developer.arm.com/products/system-design/fast-models/docs/dui0834/d/introduction/network-set-up/taptun-networking/setting-up-a-network-connection-for-microsoft-windows
    https://developer.arm.com/products/system-design/fast-models/docs/dui0834/d/introduction/network-set-up/taptun-networking/configuring-the-networking-environment-for-microsoft-windows
  d.For Unbuntu, please follow these links:
    https://developer.arm.com/products/system-design/fast-models/docs/dui0834/d/introduction/network-set-up/taptun-networking/setting-up-a-network-connection-for-ubuntu-linux
    https://developer.arm.com/products/system-design/fast-models/docs/dui0834/d/introduction/network-set-up/taptun-networking/configuring-the-networking-environment-for-linux
  Note:
  a.Rename ARMfmuser to ARM0 and fmuser to $(whoami) for Unbuntu
  b.fvp/network/windows is the tools required for Windows
  c.fvp/network/linux is the tools required for Redhat
