# GUM
Let's make it BUBBLE!


#### 댓글에 작성자이름 뜨게 구현
- db에 t.string name 추가
- 컨트롤러 def reply_write에 reply.name = current_user.name 추가
- index에서 <%= r.name %>로 작성자 이름 불러오기
- ajax 안쓰고 우선 form 태그로 POST하게 했어요

#### 로그인 했을 시 댓글 작성자 이름 누르면 드롭다운 뜨게 구현
- 아직 페이지를 안만들어서 눌러도 뜨진않아요
- 프로필, 메세지, 이름검색 정도 나오게 할 생각인데 더 추가할거 있으면 넣어주세요

#### 동영상 여러개 있을때 제대로 안나눠 지는거 수정
- <% end %>를 div 바깥으로 뺐어요

#### TODOS
- 검색 기능
- 프로필페이지(관심사 추가)
- 메세지 기능
- 태그
- 동영상 자동재생


---
***

### c9과 연결하기
-Create a new workspace에서 Clone from Git or Mercurial URL에 git주소 입력

### 처음 c9과 연결 한 후 할 것
1. bundle install
2. rake db:migrate

### 프로젝트와 git을 연결 한 후 파일을 수정하고 올릴 땐
1. git status로 바뀐파일 확인
2. git add 파일이름 or git add --a로 올릴 내용을 add
3. git commit -m "태그 내용"
4. git push origin master 
5. github id, password


### 다른사람이 push한 코드를 받아오려면
- git pull origin master

### git pull를 할 경우 아래와 같은 에러가 나오며 pull을 실패할 때
 - git pull error: Your local changes to the following files would be overwritten by merge:
 
위와 같은 에러가 발생하는 이유
로컬에 새로운 파일 및 변경 내용이 commit이 되지 않아 romote와 충돌하여 발생하는 에러
 1. git fetch  --all
 2. git reset --hard origin/master
(위의 작업시 로컬의 작업내용이 모두 사라짐)
