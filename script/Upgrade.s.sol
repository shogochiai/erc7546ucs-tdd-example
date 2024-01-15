// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {ERC7546Proxy} from "../lib/ucs-contracts/src/proxy/ERC7546Proxy.sol";
import {Dictionary} from "../lib/ucs-contracts/src/dictionary/Dictionary.sol";

import { Ops } from "../lib/Ops.sol";


contract Upgrade is Script {
    address admin = makeAddr("ADMIN");
    address dictionary;
    address proxy;

    function run() public {
        dictionary = address(new Ops());
        proxy = deployProxy(dictionary, ""); // TODO: wanna try initialize(admin)
    }

    function deployProxy(address _dictionary, bytes memory _initData) internal virtual returns (address) {
        return address(new ERC7546Proxy(_dictionary, _initData));
    }
}
