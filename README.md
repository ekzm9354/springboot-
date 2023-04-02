
**1. JavaProject01 - binance**

binance api를 활용하여 개인의 암호화폐 거래내역과 포지션 횟수 및 지갑을 확인 할 수 있습니다. 현재는 한 개의 거래소만 연동되어있지만 추후 여러 거래소를 연결할 계획으로 한 페이지에서 통관리할 수 있습니다.

- Front-end : HTML5/CSS3
- Back-end : Java18
- Database : MySQL
- Developer : springboot
- Build : gradle

**2. SoundOfMind**

선천적 청각장애인들의 사회적 이슈를 접하고 이를 통해 기획하고 구현한 프로젝트로 선천적 청각장애인들이 가지는 이슈는 아래와 같았습니다.
- 발음이 부정확하며 상대방의 감정에 대한 공감이 어려움
- 공통된 상황에 있는 사람들끼리 공감할 수 있는 커뮤니티가 부족함

총 5명의 팀원으로 Front-end 2명, Back-end 1명, Data-analysis 2명으로 구성되어 진행했습니다. 전반적인 Back-end를 담당했고 구현한 기능은 다음과 같습니다.
- kakao, google, naver, 등 api를 활용하여 소셜로그인, 지도, 사용자 GPS 등 구현
- DB table, coulnm 설계 및 쿼리 작성
- WebSocket chatting

위 기능을 구현하면서 가장 어려웠던 것은 WebSocket으로 원리를 이해하고 이를 Controller를 통해 구현하는 것이 무척 어려웠습니다.

- Front-end : HTML5/CSS3
- Back-end : Java11
- Database : MySQL
- Developer : springboot
- Build : maven

**3. RecommandFood**

대한민국 성인남녀는 1일 영양섭취권장량 대비 영양소 섭취가 부족하다는 사회적 이슈를 접하고 이를 통해 기획하고 구현한 프로젝트입니다. 성인남녀가 적정량에 맞는 영양섭취를 하지 못하는 이유 중 1순위는 바쁜 일상, 2순위는 맞는 음식점을 찾기가 어려움이었습니다. 

총 5명의 팀원으로 Front-end 2명, Back-end 2명, Data-analysis 1명으로 구성되어 진행했습니다. 전반적인 Back-end를 담당했고 부가적으로 Data-analysis를 맡은 팀원를 도와 추천알고리즘을 구현했습니다.

- signup/signin page 구현
- flask - jsp 통신 구현
- DB table, colunm 설계 및 쿼리 작성

위 기능을 구현하면서 가장 어려웠던 것은 flask에서 수행하는 추천알고리즘의 결과를 어떻게 JSP로 가져올지가 문제였습니다. 현재라면 POST 방식 혹은 JSON 방식으로 가져오는 것을 생각하겠지만 구현 당시 미흡했던 탓에 GET 방식으로 데이터를 주고 받았습니다.

- Front-end : HTML5/CSS3
- Back-end : Java1.8
- Database : Oracle
- Developer : Eclipse
- Build : maven
