# 2018년 5월 미니 해커톤 <아마겟돈>
## 소개
* 2018년 5월 마루180(MARU 180)에서 열린 미니 해커톤에서 만들었습니다.

* '아마겟돈'은 '아마도 우리는 돈을 Get할 것이다' 라는 뜻으로, 여러 단체에서 활동하고 있는 총무들을 위한 웹 서비스입니다.

## 제작 배경
* 대부분의 단체에서 필수적인 존재인 총무들은 비록 눈에 보이지 않을지라도 각종 행사의 예산, 결산을 짜서 행사를 기획하고, 각종 뒤풀이 또는 회식에서 계산을 담당하는 등 단체를 위해 열심히 일하고 있습 니다. 이런 총무들이 주로 맡는 예결산 기획, 뒤풀이 정산과 같은 일은 어렵고 복잡하다기 보단, 비슷한 양식의 반복적인 작성과 인원 별로 입금 여부를 확인하는 다소 귀찮은 일입니다.

* 저희는 이런 총무들이 어떻게 하면 조금 더 일을 편하고 쉽게 할 수 있을까 고민한 끝에 '아마겟돈'을 만들었습니다.

## 구성
* '아마겟돈'은 크게 두개의 파트로 나뉘어 있습니다. 먼저 'Dutch Pay'에서는 먼저 계산을 한 뒤 인원 수 로 나누어 돈을 입금받는 경우, 입금 여부의 확인을 쉽게 하기위한 기능을 만들었습니다. 그리고 'Budget Plan'에서는 행사 기획을 할 때 필요한 양식을 제공하여, 항상 엑셀에 양식을 만들어 작성하는 귀찮음을 해소하고자 하였습니다.

## 특징
* Ruby on rails 를 이용하여 전체적인 페이지 제작 
  * 아마겟돈은 'Ruby on rails' 를 이용하여 전체적인 페이지를 제작하였습니다. Scaffold를 이용한 게시판 시스템 구현 및 1:N 모델을 다수 이용하여 파트별 게시물내에 Table과 댓글, 명단을 각각 적용하였습니다. 'Dutch Pay'파트에서는 편의성을 좀 더 증대시키기 위해 이름을 입력할 때, 공백여부와 상관없이 ' , ' 를 기준으로 이름을 구분하여 자동으로 리스트에 추가하도록 모델을 구성하였고, One Button Click으 로 입금여부를 기록할 수 있도록 만들었습니다. 'Budget Plan'파트에서는 상단의 입력창에 내용을 기입 하면 자동으로 아래의 Table에 채워지도록 모델을 구성하였고, 각 항목별 총액과 전체 총액 그리고 인원 별 금액이 자동으로 계산 되도록 만들었습니다. 그리고 게시판 내 검색 기능 또한 rails를 이용하여 제작 하였습니다.

* Devise gem을 이용하여 로그인 시스템 구현 
  * Devise gem을 적용하여 페이지의 기능을 이용하기 위해서 선 로그인이 필수적이도록 만들었습니다. 또 한 로그인한 사용자를 인식하여 자신이 쓴 글만 우선적으로 보이도록 하였으며, 모든 사용자의 글을 모아보는 페이지를 따로 만들었습니다. 그리고 자신이 쓴 글만 수정, 삭제가 가능하도록 하였습니다.

* Javascript를 이용하여 특정부분 Show/Hidden기능 버튼 구현 
  * 'Budget Plan'파트의 Table을 작성하는 페이지에서 필요에 따라 입력하는 폼을 포함하여 불필요한 부분 을 숨겨 좀더 깔끔한 모양으로 캡쳐할 수 있도록 하기 위하여, 'Javascript'를 이용해 버튼 클릭으로 특정 부분을 숨기는 기능을 구현하였습니다.
