# peer2profit

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![Docker Stars][docker-stars-shield]][docker-stars-url]
[![Docker Pulls][docker-pulls-shield]][docker-pulls-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <br>
    <img src="https://github.com/Chasing66/peer2profit/blob/main/static/logo_p2p.png" alt="Logo" width="43" height="42">
    <h3 align="center">Peer2Profit</br>
  </br>
  <h3 align="center">Docker image for Peer2Profit</h3>
  <p align="center">分享闲置带宽获得利润</p>
  <p align="center">
    <a href="https://github.com/Chasing66/peer2profit" target="_blank">Github</a>
    |
    <a href="https://hub.docker.com/r/enwaiax/peer2profit" target="_blank">Docker Hub</a>
  </p>
</p>

## 语言

[English](README.md) | [中文文档](README_zh.md)

## 充电支持

<a href="https://afdian.net/@LuckyHunter"><img src="https://img.shields.io/badge/%E7%88%B1%E5%8F%91%E7%94%B5-LuckyHunter-%238e8cd8?style=flat-square" alt="前往爱发电赞助" width=auto height=auto border="0" /></a>

## 介绍

Peer2Profit 通过分享你的闲置带宽从而获取收益。

本项目是整个互联网上的**第一个 Peer2Profit 的 docker 镜像**，比 Peer2Profit 的官方镜像更早。

本项目有以下特点：

1. 支持基于 Alpine 和 Debian11 两种镜像。`enwaiax/peer2profit:latest`基于 Debian-11 编译。`enwaiax/peer2profit:alpine`基于 Alpine 编译，镜像极小。

2. 一键脚本实现了以下功能：

   - 安装基本软件包
   - 设置虚拟内存（为实际物理内存的两倍）
   - 安装 docker 和 docker-compose
   - 设定邮件以及启动的 docker 容器数量
   - 通过 docker-compose 便捷化增加、删除、移除容器

3. 全平台 docker 镜像支持

## 信息

- 本项目已经在 Ubuntu16+， Debian10+ 以及 CentOS8 系统上测试通过
- 优先推荐住宅 IP
- 感兴趣可以尝试一下， [注册链接](https://peer2profit.com/r/1629477772611fdb8cab06c)

### 使用方法

1. 交互式执行

```shell
bash <(curl -fsSL bit.ly/peer2fly)
```

2. 下载脚本，传参一键执行

```shell
wget -q https://bit.ly/peer2fly -O peer2fly.sh
```

传参数执行，例如

```shell
bash peer2fly.sh --email chasing66@live.com --number 10
```

或者：

```shell
curl -fsSL bit.ly/peer2fly |bash -s -- --email chasing66@live.com --number 5
```

3. 使用代理

- 编辑配置文件 proxychains4.conf

```shell
wget -q https://raw.githubusercontent.com/Chasing66/peer2profit/main/proxychains4.conf -O proxychains4.conf
vi proxychains4.conf
```

- 执行脚本

```shell
./peer2fly.sh --email "你的邮箱地址" --number "容器个数" --proxy true
```

#### 例如

```shell
./peer2fly.sh --email chasing66@live.com --number 5 --proxy true
```

#### 查看运行状态

```shell
docker-compose ps
docker stats --no-stream
```

#### 停止运行

```shell
docker-compose stop
```

#### 启动容器

```shell
docker-compose start
```

#### 删除容器

```shell
docker-compose down
```

#### 改变容器数量

```shell
docker-compose up --scale peer2profit=6 -d
docker-compose ps
```

### 免责声明

本程序仅供学习了解, 非盈利目的，请于下载后 24 小时内删除, 不得用作任何商业用途, 文字、数据及图片均有所属版权, 如转载须注明来源。

使用本程序必循遵守部署免责声明。使用本程序必循遵守部署服务器所在地、所在国家和用户所在国家的法律法规, 程序作者不对使用者任何不当行为负责.

## Stargazers over time

[![Stargazers over time](https://starchart.cc/Chasing66/peer2profit.svg)](https://starchart.cc/Chasing66/peer2profit)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/Chasing66/peer2profit.svg?style=flat-square
[contributors-url]: https://github.com/Chasing66/peer2profit/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Chasing66/peer2profit.svg?style=flat-square
[forks-url]: https://github.com/Chasing66/peer2profit/network/members
[stars-shield]: https://img.shields.io/github/stars/Chasing66/peer2profit.svg?style=flat-square
[stars-url]: https://github.com/Chasing66/peer2profit/stargazers
[issues-shield]: https://img.shields.io/github/issues/Chasing66/peer2profit.svg?style=flat-square
[issues-url]: https://github.com/Chasing66/peer2profit/issues
[license-shield]: https://img.shields.io/github/license/Chasing66/peer2profit.svg?style=flat-square
[license-url]: https://github.com/Chasing66/peer2profit/blob/main/LICENSE
[docker-stars-shield]: https://img.shields.io/docker/stars/enwaiax/peer2profit.svg?style=flat-square
[docker-stars-url]: https://hub.docker.com/r/enwaiax/peer2profit
[docker-pulls-shield]: https://img.shields.io/docker/pulls/enwaiax/peer2profit.svg?style=flat-square
[docker-pulls-url]: https://hub.docker.com/r/enwaiax/peer2profit
