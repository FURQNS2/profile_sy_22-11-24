/**
 * 
 */
 
 function boardCheck(){ 
	if(document.board_frm.qname.value.length == 0){
		alert("이름은 필수 입력사항입니다.");
		return;
	}
	
	if(document.board_frm.qname.value.length < 2){
		alert("이름은 1글자 이상 이어야합니다.");
		return;
	}
	
	if(document.board_frm.qname.value.length > 10){
		alert("이름은 10자 미만 이어야합니다.");
		return;
	}
	
	if(document.board_frm.qcontent.value.length < 10){
		alert("질문은 10자 이상 이어야합니다.");
		return;
	}
		
	if(document.board_frm.qemail.value.length == 0){
		alert("이메일은 필수 입력사항입니다.");
		return;
	}

	document.board_frm.submit();
}