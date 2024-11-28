# meta-mender-rockchip

Mender integration for rockchip based boards

The supported and tested boards are:

 - [ROCK 4C+](https://radxa.com/products/rock4/4cp/)

Visit the individual board links above for more information on status of the
integration and more detailed instructions on how to build and use images
together with Mender for the mentioned boards.

## Dependencies

This layer depends on:

```
URI: https://git.yoctoproject.org/meta-rockchip/
branch: scarthgap
revision: HEAD
```

```
URI: https://git.yoctoproject.org/meta-arm/
branch: scarthgap
revision: HEAD
```

## Quick start

The following commands will setup the environment and allow you to build images
that have Mender integrated.

```
mkdir -p meta-mender-community/mender-rockchip && cd meta-mender-community/mender-rockchip
kas build ../kas/rock-4c-plus.yml
```

## UART

https://wiki.radxa.com/Rockpi4/dev/serial-console

    baudrate: 1500000
    data bit: 8
    stop bit: 1
    parity  : none
    flow control: none

UART being connect can stop it from booting


