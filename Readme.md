## Foundry

```bash
$ forge test --gas-report
[⠢] Compiling...
No files changed, compilation skipped

Ran 6 tests for test/InsertionSortTest.t.sol:InsertionSortTest
[PASS] testArrayWithDuplicates() (gas: 23674)
[PASS] testEmptyArray() (gas: 9360)
[PASS] testRandomArray() (gas: 23342)
[PASS] testReverseArray() (gas: 19216)
[PASS] testSingleElementArray() (gas: 10273)
[PASS] testSortedArray() (gas: 15263)
Suite result: ok. 6 passed; 0 failed; 0 skipped; finished in 4.16ms (9.33ms CPU time)
| src/InsertionSort.sol:InsertionSort contract |                 |      |        |      |         |
|----------------------------------------------|-----------------|------|--------|------|---------|
| Deployment Cost                              | Deployment Size |      |        |      |         |
| 215140                                       | 781             |      |        |      |         |
| Function Name                                | min             | avg  | median | max  | # calls |
| sort                                         | 747             | 4907 | 4981   | 9799 | 6       |


Ran 1 test suite in 18.82ms (4.16ms CPU time): 6 tests passed, 0 failed, 0 skipped (6 total tests)
```

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

## 钱包

一个 metamask 账号,只有一组助记词
可以创建多个钱包账户,一个钱包账户对应一个私钥,所以私钥也可以有很多个

即时删除了钱包账户,资产也不会消失,只是看不见账户了,再次点击 create account 就又能见到
