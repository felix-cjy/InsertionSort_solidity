## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

## TinTin 训练营

学号 135

【学员手册】https://attractive-spade-1e3.notion.site/3c55c15d535c43f7a236183af40cf76b?pvs=4

课前学习资料：https://attractive-spade-1e3.notion.site/dff0bb9eaf7645e2b684c99f4e97c3a2?pvs=4

## 钱包

一个 metamask 账号,只有一组助记词
可以创建多个钱包账户,一个钱包账户对应一个私钥,所以私钥也可以有很多个

即时删除了钱包账户,资产也不会消失,只是看不见账户了,再次点击 create account 就又能见到
