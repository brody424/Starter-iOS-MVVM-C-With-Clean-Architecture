# Starter-iOS-MVVM-C-With-Clean-Architecture
iOS MVVM-C 패턴과 클린아키텍처를 연습하기 위한 저장소입니다.


<img width="1473" alt="screen_shot" src="https://user-images.githubusercontent.com/15370950/232657294-dae15ba6-919a-4a89-b762-f5936c095c48.png">



## Present Layer

### Coordinator
- Coordinator에서 화면전환관리와 ViewModel을 관리해줍니다.
  - Coordinator에서 여러개의 화면과 여러개의 ViewModel을 관리하여 N:M 관계를 지향합니다.   
- Coordinator은 하나의 시나리오로 구성했습니다.  
  - 시나리오는 NavigationController로 Push, Pop으로 움직이는 흐름이라고 정의했습니다
  - 만약 Modal로 화면을 추가하고 추가된 화면에서 NavigationController를 사용하여 시나리오가 된다면 Modal된 화면은 Coordinator로 추가합니다.
  - Modal로 추가한 화면은 그 전 시나리오와는 다른 시나리오가 되어야 합니다. 
- ViewModel을 관리하기 위해서 Swinject같은 의존성주입(DI) 라이브러리를 사용할 예정입니다.

### ViewModel
- View에서 받은 이벤트를 처리하는 역할을 합니다.
- RxSwift를 이용하여 Data를 View에 바인딩 합니다.
- 화면전환이 필요한 경우 Coordinator에게 화면전환을 요청합니다.
  - 화면전환을 요청할 때 Delegate 패턴을 사용합니다.
- Usecase를 이용하여 Domain 레이어에서 비즈니스로직을 실행합니다.

### View
- ViewModel의 데이터와 바인딩하여 화면을 보여줍니다.


## Domain Layer

### Usecase
- 비즈니스 로직을 처리합니다.
- 데이터가 필요하다면 Repository Interface를 사용하여 Data Layer에서 데이터를 받아옵니다.

### Entity(Model)


## Data Layer

### Network
- Moya 라이브러리를 사용하여 추상화한 네트워크 모듈입니다.

### Repository Impl
- Domain Layer에서 정의한 Repository Interface의 구현체입니다.
- Moya를 사용해서 데이터를 불러오고 Usecase에 전달합니다.
