function resetForm() {
  document.getElementById("register").reset();
}

function regist() {
  // 문서에서 id 로 input data 가져오기
  let name = document.getElementById("name").value;
  let id = document.getElementById("id").value;
  let password = document.getElementById("password").value;
  let passwordcheck = document.getElementById("passwordcheck").value;
  let emailid = document.getElementById("emailid").value;
  let domain = document.getElementById("domain").value;

  // 입력값 검증
  if (
    name === "" ||
    id === "" ||
    password === "" ||
    passwordcheck === "" ||
    emailid === "" ||
    domain === ""
  ) {
    alert("빈칸이 없도록 입력해주세요.");
    return false;
    // 비밀번호 확인
  } else if (password !== passwordcheck) {
    alert("비밀번호를 확인해주세요.");
    return false;
  } 
    alert("회원가입 성공!");
    return true;
}
