device/qemu
========================================

In this directory, you must define such as makefiles:

* BoardConfig.mk: include by build/core/envsetup.mk

* YudatunBoard.mk: include by build/target/board/Yudatun.mk

* yudatun_qemu.mk: include by build/target/product/YudatunProducts.mk

In other words, you just to define above three makefiles, you can DIY yourself hardware.
