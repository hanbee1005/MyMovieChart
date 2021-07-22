# MyMovieChart
"꼼꼼한 재은씨의 swift - 기본편" 영화앱 만들기

## 테이블 뷰를 이용하여 데이터 목록 구현
1. TableViewController 를 스토리보드에 추가하고 ListViewController.swift 코드를 생성하여 연결
    - ListViewController는 UITableViewController를 구현
2. 기본 셀 스타일 선택 후 테이블 뷰를 보여주기 위한 코드 작성
    - numberOfRowsInSection : 몇개의 셀을 보여줄지 (보통 데이터의 개수와 동일)
    - cellForRowAt : 해당 셀에 보여질 내용 구성
3. 셀 선택 시 처리할 내용 구현
    - didSelectRowAt : 셀 선택 시 처리할 내용 작성 (선택한 셀의 인덱스는 indexPath.row로 확인)
4. Custom Cell 구성
    - cell을 구성하는 각 요소들을 tag로 구분 (숫자만 가능)
    - viewWithTag(태그값)을 통해 요소 찾아오기 (UIView 타입)
    - "as? 타입" 으로 다운캐스팅하여 원하는 타입으로 반환하여 처리
5. 커스텀 클래스로 Custom Cell 구성
    - tag를 사용하지 않아도 되서 이점이 있음
    - MovieCell.swift 파일을 만들고 UITableViewCell을 상속 받도록 함
    - 프로토타입 셀의 class 를 MovieCell 로 지정
    - 셀의 요소들을 MovieCell 클래스에 아울렛 변수로 추가
    - cellForRowAt 에서 dequeueReusableCell 로 셀을 가져올 때 커스텀 클래스 가져오기
    
## API 통신
1. API URI를 URL 객체로 만들고
2. Data(contentsOf:)를 통해 GET 방식의 데이터 가져오기
3. JSON 데이터 파싱하기

## MapKit 사용
1. MapKit Framework 추가
2. ViewController 추가 후 MapKitView를 추가하고 import MapKit 설정
3. 위도, 경도 정보를 바탕으로 CLLocationCoordinate2D 객체 생성
4. 맵에 표현될 지역의 너비를 CLLocationDistance 객체를 이용하여 설정
5. 위도와 경도를 이용하여 정의한 중심 위치와 거리값을 조합하여 맵 뷰에 전달될 MKCoordinateRegion(center:latitudinalMeters:longitudinalMeters:) 생성
6. setRegion() 메소드를 통해 전달
7. 지도 위에 특정 위치를 표시하고 싶다면, MKPointAnnotation 객체를 생성하고 coordinate 속성을 설정한 뒤 지도에 추가
