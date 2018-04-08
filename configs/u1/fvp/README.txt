1.How to setup the console terminal?
  a.Copy telnet.exe from cygwin's bin to C:\Windows\System32
  b.Add cygwin's bin folder into PATH environment variable
  Note:
  a.Don't use telnet.exe come from Windows installation
  b.Don't input too fast which may make UART overrun
  c.UART stop receive any input once overrun until reboot
  d.Ubuntu don't need any special setup

2.How to setup semihosting base directory?
  -C armcortexm4ct.semihosting-cwd="d:\\test"
  Note:
  a.For DS-5, you can find the input here:
    Run->Debug Configurations...->Connection->Model parameters
  b.We need double \ to disable escape sequence
