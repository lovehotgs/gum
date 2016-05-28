# GUM
Let's make it BUBBLE!


<%= current_user.name %>
이게 댓글쓴사람 이름 뜨는게 아니라 현재 로그인 된 사람 이름이 뜨는거라서 로그인이 안되있으면 에러뜨는거였네요.
게다가 누가 댓글을 작성하든지에 상관없이 현재 로그인된 사람 이름이 뜨네요. 그래서 우선은 로그인 했을시에 이름 뜨게 하고 로그인 안했을때는 댓글내용만 보이게 해놨어요


###c9과 연결하기
-Create a new workspace에서 Clone from Git or Mercurial URL에 git주소 입력

###처음 c9과 연결 한 후 할 것
1. bundle install
2. rake db:migrate

###프로젝트와 git을 연결 한 후 파일을 수정하고 올릴땐
1. git status로 바뀐파일 확인
2. git add 파일이름 or git add --a로 올릴 내용을 add
3. git commit -m "태그 내용"
4. git push origin master 
5. github id, password


###다른사람이 push한 코드를 받아오려면
git pull origin master

###git pull를 할 경우 아래와 같은 에러가 나오며 pull을 실패할 때
 - git pull error: Your local changes to the following files would be overwritten by merge:
 
위와 같은 에러가 발생하는 이유
로컬에 새로운 파일 및 변경 내용이 commit이 되지 않아 romote와 충돌하여 발생하는 에러
 1. git fetch  --all
 2. git reset --hard origin/master
(위의 작업시 로컬의 작업내용이 모두 사라짐)
