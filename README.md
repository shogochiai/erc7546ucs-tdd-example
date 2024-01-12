# ERC-7546 UCS TDD Example

## Overview
This project was born to solve unconfortable UUPS-based testing/devops experience.  

**The downside of UUPS testing are**
  - You must be proxy-concerned.
  - One-implementation, one proxy.
  - Hardhat.
  - "BigNumber"
  - Slow.
  - State preparation via complex scenario.

**The virtue of UCS testing are**
  - Just unit test functions.
  - No proxies within your sight.
  - Foundry.
  - Just simply write Solidity.
  - Fast.
  - Made up your state and run [fuzz testing](https://mirror.xyz/shogochiai.eth/qw8PutYbxhm3g8FaW9g4NjKq14giC8jVtq_aMFOvkSU).

## Status
- DoubleOp, ProposeOp, VoteOp, and ExecuteOp test cases are demonstrated.
  - ProposeOp and VoteOp are sharing the same state. Functions can share their storage and you can treat UCS proxy as a singleton contract.
    ![propose op](./docs/images/proposeop.png)
    ![vote op](./docs/images/voteop.png)
  - The fuzz test of ExecuteOp has "fuzzable" prerequisite state.
    ![execute op](./docs/images/executeop.png)
    ![test execute](./docs/images/testexecute.png)

## Roadmap
- More example like "ve" and "AA"
