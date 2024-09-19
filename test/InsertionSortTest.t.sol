// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/InsertionSort.sol";

contract InsertionSortTest is Test {
    InsertionSort public insertionSort;

    function setUp() public {
        insertionSort = new InsertionSort();
    }

    function testEmptyArray() public view {
        uint256[] memory arr = new uint256[](0);
        uint256[] memory sorted = insertionSort.sort(arr);
        assertEq(sorted.length, 0);
    }

    function testSingleElementArray() public view {
        uint256[] memory arr = new uint256[](1);
        arr[0] = 42;
        uint256[] memory sorted = insertionSort.sort(arr);
        assertEq(sorted.length, 1);
        assertEq(sorted[0], 42);
    }

    function testSortedArray() public view {
        uint256[] memory arr = new uint256[](5);
        arr[0] = 1;
        arr[1] = 2;
        arr[2] = 3;
        arr[3] = 4;
        arr[4] = 5;
        uint256[] memory sorted = insertionSort.sort(arr);
        for (uint256 i = 0; i < arr.length; i++) {
            assertEq(sorted[i], i + 1);
        }
    }

    function testReverseArray() public view {
        uint256[] memory arr = new uint256[](5);
        arr[0] = 5;
        arr[1] = 4;
        arr[2] = 3;
        arr[3] = 2;
        arr[4] = 1;
        uint256[] memory sorted = insertionSort.sort(arr);
        for (uint256 i = 0; i < arr.length; i++) {
            assertEq(sorted[i], i + 1);
        }
    }

    function testRandomArray() public view {
        uint256[] memory arr = new uint256[](7);
        arr[0] = 64;
        arr[1] = 34;
        arr[2] = 25;
        arr[3] = 12;
        arr[4] = 22;
        arr[5] = 11;
        arr[6] = 90;
        uint256[] memory sorted = insertionSort.sort(arr);
        for (uint256 i = 1; i < arr.length; i++) {
            assertTrue(sorted[i] >= sorted[i - 1]);
        }
    }

    function testArrayWithDuplicates() public view {
        uint256[] memory arr = new uint256[](8);
        arr[0] = 3;
        arr[1] = 1;
        arr[2] = 4;
        arr[3] = 1;
        arr[4] = 5;
        arr[5] = 9;
        arr[6] = 2;
        arr[7] = 6;
        uint256[] memory sorted = insertionSort.sort(arr);
        for (uint256 i = 1; i < arr.length; i++) {
            assertTrue(sorted[i] >= sorted[i - 1]);
        }
        assertEq(sorted[0], 1);
        assertEq(sorted[1], 1);
        assertEq(sorted[7], 9);
    }
}
