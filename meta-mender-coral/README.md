# meta-mender-coral

Mender integration layer for Google Coral family of boards.

The supported and tested boards are:

- [Google Coral Dev Board](https://hub.mender.io/t/google-coral-dev-board/1711)

This layer is being ported from Kirkstone to Wrynose. It retains the Coral Dev
Board Mender boot configuration, including its U-Boot environment and boot
script integration.

## Dependencies

This layer depends on:

```
URI: a Wrynose-compatible Coral Dev Board BSP
layers: Coral BSP layer providing the `coral-dev` machine
```

```
URI: https://github.com/mendersoftware/meta-mender.git
layers: meta-mender-core
branch: wrynose
```

The layer recommends the `coral-bsp` layer collection. Add it to `BBLAYERS`
alongside the Coral BSP, `meta-mender-core`, and this layer before building a
Wrynose image for `MACHINE = "coral-dev"`.


