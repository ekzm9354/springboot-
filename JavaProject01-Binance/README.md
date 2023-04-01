본 프로젝트는 오픈 템플릿을 활용하여 제작합니다.<br>
프레임워크는 SpringBoot를 이용합니다. 또한 thymeleaf를 활용하고 빌드 도구는 Gradle입니다.<br>
데이터 베이스는 많은 고민을 했지만 MySQL를 이용합니다.<br>

SpringBoot와 Gradle 빌드를 새롭게 사용하면서 SpringBoot에서 제공하는 Maven과 Gradel를 모두 사용해볼 수 있었습니다.<br>
빅데이터 서비스과정 교육을 이수할 때 사용했던 JSP가 아닌 Thymeleaf를 사용하여 만들었습니다.<br>
주 목표는 **SpringBoot MVC**에 대해 숙지하는 것과 Java 언어를 사용해 REST API를 호출해 사용해보는 것입니다.<br>

**저는 해당 프로젝트를 진행하면서 REST API 사용에 꼭 필요한 HMAC에 대한 개념과 HMAC-SHA26 사용법을 배웠습니다.
또한 MVC패턴을 공부하면서 교육에서 배운 방식이 아닌 Service와 Respository단을 나눠 코드의 구독성을 올린다는 것을 배웠습니다.
하지만 이것은 본 프로젝트에 적용하지 않았습니다.** 

**저는 해당 프로젝트를 여기서 마무리하는 것이 아닌 위에서 언급드린 서비스 단을 나눠 코드의 구독성을 올리고 Mybatis가 아닌 JPA를 사용함으로써 ORM과 친숙해질 예정입니다.** 이상으로 배웠던 점과 앞으로의 방향성을 마무리하고 프로젝트에 대한 간략한 소개와 보완점으로 넘어가겠습니다.


다음 기능을 제공합니다.
- 로그인/회원가입
- 등록페이지를 통해 API 등록
- Binance 페이지를 통해 API가 등록된 계정의 잔액, 포지션 횟수, 포지션에 대한 롱과 숏 횟수, 매매내역을 알 수 있습니다.
- 일별 PNL, 포지션 횟수, 롱과 숏 횟수를 알 수 있습니다. 
<br>

페이지에 방문시 가장 먼저 만나게 되는 인덱스 페이지입니다. 
![image](https://user-images.githubusercontent.com/106305465/222973722-30b3ca87-d1e7-48a6-a01e-ccfcca59286d.png)
<br>

로그인을 하는 경우 사용자의 페이지는 사용자의 정보에 맞춰 변경됩니다.<br>
또한 해당 프레임워크에서는 Binance 거래소만을 제공하므로 Binance 페이지에 들어가게되면 등록된 API를 통해 계정의 정보를 받을 수 있습니다.
![image](https://user-images.githubusercontent.com/106305465/222973850-26cecb8e-6420-46e3-86b3-cb4fa49cf7c3.png)

아래 페이지는 로그인 후 API가 등록가능한 페이지입니다. 해당 프레임워크는 Binance만을 제공하므로 SELECT-OPTION에는 Binance만 존재합니다.
![image.jpg1](https://user-images.githubusercontent.com/106305465/222973917-b7e67149-2c50-486a-aa5d-c84d3fe1f3d5.png) |![image.jpg2](https://user-images.githubusercontent.com/106305465/222973976-5261d545-4888-4fa2-a6c0-5622a269d941.png)
--- | --- | 

Binance 페이지에 방문하게되면 사용자는 현재 선물계정의 잔액, POSITION의 횟수, 총 POSITION의 횟수에서의 롱과 숏 횟수를 확인할 수 있습니다.
![image](https://user-images.githubusercontent.com/106305465/222974192-a6dc18b0-f360-4e72-b1f6-26d088092e20.png)

또한 실제로 체결된 내역에 대해서 표로 쉽게 알아볼 수 있으며 특정 열의 오름차순, 내림차순 그리고 필요한 심볼에 따라 검색도 가능합니다.
![image](https://user-images.githubusercontent.com/106305465/222974261-5d188895-0b7e-4983-abee-9857e5619770.png)

다음은 보완점 입니다.<br>
**1. API를 통해 주문체결내역을 불러옴으로 "이익" 페이지단이 통일되게 표시되지 못 했습니다.**
![image](https://user-images.githubusercontent.com/106305465/222974695-a115c3ce-a915-4abe-9c33-55437df62c7d.png)

**2. Ajax 요청을 사용하지 않고 곡선차트와 막대차트를 각 사용자의 정보로 수정하지 못 했습니다. DB에 있는 값을 요청해 가져오다보니 접속했을 때 바로 뜨는게 아직은 미숙해서 부족했습니다. JSON 형태로 넘겨봤으나 외부 JS를 통해 한번 더 들어가야하다보니 단일값을 처리하는 것과 또 다른 문제였습니다.**
![image](https://user-images.githubusercontent.com/106305465/222974768-e2a4322b-c758-4c51-949b-373065ebf277.png)

**3. 하드코딩의 문제가 있습니다. SpringBoot MVC 패턴을 공부하는 것과 REST API 활용에 목을 두다보니 실제 작성된 코드를 보면 효율적이고 클린 코드라기보다는 지저분하고 효율적이지 못 하다는 점이 있습니다.**
![image](https://user-images.githubusercontent.com/106305465/222974811-fbd4a86c-13db-4604-baca-27543479fbac.png)


본 글은 웹프로젝트의 기록물입니다. <br>
This article is a record of the web project.

