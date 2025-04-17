# src/V2_Contracts

이 모듈은 `RewardVault` 컨트랙트의 V2 버전을 포함합니다.

## Contracts Overview

*   **RewardVault_V2:** 특정 스테이킹 토큰에 대한 BGT 보상 및 추가 인센티브 토큰의 스테이킹과 분배를 담당하는 볼트 컨트랙트입니다. `src/V1_Contracts` 및 `src/pol`의 `RewardVault`와 유사한 기능을 제공하지만, V2 버전을 명시적으로 나타냅니다.

    *   **참고:** 현재 `src/V2_Contracts/RewardVault.sol` 파일의 내용은 `src/pol/rewards/RewardVault.sol` (최신 POL 버전) 또는 `src/V1_Contracts/RewardVault_V1.sol` 과 기능적으로 거의 동일합니다. 인터페이스는 `IRewardVault_V1`을 따르고 있습니다.
    *   자세한 구조와 기능은 `src/pol` 또는 `src/V1_Contracts` 모듈의 `RewardVault` 문서를 참조하십시오.
        *   [POL RewardVault](pol.md)
        *   [V1 RewardVault](V1_Contracts.md) 

## Diagrams

### Class Diagram

`RewardVault_V2` 컨트랙트와 관련된 인터페이스, 라이브러리, 상속 관계를 보여주는 클래스 다이어그램입니다.

```plantuml
./diag-images/V2_Contracts/V2_Contracts_ClassDiagram.puml
```

### Sequence Diagram

`RewardVault_V2`의 주요 상호작용(Stake, Get Reward, Add Incentive, Notify Reward Amount)을 보여주는 시퀀스 다이어그램입니다.

```plantuml
./diag-images/V2_Contracts/RewardVault_V2_Sequence.puml
``` 