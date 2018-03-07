## Magento 1.x + modman + n98-magerun

The docker images defined in this repository serve as a starting point for [Magento 1.x](https://magento.com/tech-resources/download) projects and include [modman](https://github.com/colinmollenhour/modman) and [n98-magerun](https://files.magerun.net/) for development.

Based on [official docker PHP images](https://github.com/docker-library/php), images include the dependencies Magento requires. Magento is then installed via the [OpenMage](https://github.com/OpenMage/magento-mirror) project.

>__Note:__ These images are intended to be used for development.

## Supported tags

##### PHP 5.6

- `1.9.3.8-php5.6` `latest`: [php5.6/Dockerfile](https://github.com/aspendigital/docker-magento/blob/master/php5.6/Dockerfile)
- `1.9.3.2-php5.6`
- `1.9.2.4-php5.6`

##### PHP 5.5
- `1.9.1.1-php5.5`: [php5.5/Dockerfile](https://github.com/aspendigital/docker-magento/blob/master/php5.5/Dockerfile)
- `1.9.0.1-php5.5`
- `1.8.1.0-php5.5`
- `1.7.0.2-php5.5`

##### PHP 5.4

- `1.7.0.2-php5.4`: [php5.4/Dockerfile](https://github.com/aspendigital/docker-magento/blob/master/php5.4/Dockerfile)

<br>

__OpenMage SHA1 checksums__
 - [Magento  1.9.3.8](https://codeload.github.com/OpenMage/magento-mirror/tar.gz/1.9.3.8): `ee6343cc7ac5a7b4bc17b2e8ca3e2752a30e2771`
 - [Magento  1.9.3.2](https://codeload.github.com/OpenMage/magento-mirror/tar.gz/1.9.3.2): `83a8799ab623168a67161d227f640524239dfb42`
 - [Magento  1.9.2.4](https://codeload.github.com/OpenMage/magento-mirror/tar.gz/1.9.2.4): `8f10f2ac823c78a649b15c61d12485954b5b961d`
 - [Magento  1.9.1.1](https://codeload.github.com/OpenMage/magento-mirror/tar.gz/1.9.1.1): `e87c96eebc0f4286dfe5f296c4d76b36a67f5f6d`
 - [Magento  1.9.0.1](https://codeload.github.com/OpenMage/magento-mirror/tar.gz/1.9.0.1): `bd15d5f08e8f9f46276eb961398e665d5446b4ee`
 - [Magento  1.8.1.0](https://codeload.github.com/OpenMage/magento-mirror/tar.gz/1.8.1.0): `d5f90ec133cd67f72339692c09b623857c80b3b3`
 - [Magento  1.7.0.2](https://codeload.github.com/OpenMage/magento-mirror/tar.gz/1.7.0.2): `c10a3e15f9311c2b079bb2e71bacb32cb3192402`
