# Linux_SPI_W25QXX_TEST


## 使用Linux 通用SPI驱动测试W25QXX系列falsh

先查看当前SPI是否挂载正常

`ls /dev/spi*`

如果配置正确会输出$`/dev/spidevX.X`

修改源码34行中的`static const char *device = "/dev/spidev0.1";`将其更换为你的SPI输出文件

执行`make`编译源码

执行`./spi-test`读取W25QXX 设备ID

W25Q32读取正确为 EF15

![](https://github.com/viwa-hui/Linux_SPI_W25QXX_TEST/blob/main/spi-test.png)
