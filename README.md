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
4. Cuntom Cell 구성
    - cell을 구성하는 각 요소들을 tag로 구분 (숫자만 가능)
    - viewWithTag(태그값)을 통해 요소 찾아오기 (UIView 타입)
    - "as? 타입" 으로 다운캐스팅하여 원하는 타입으로 반환하여 처리
