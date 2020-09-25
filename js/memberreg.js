/**
 * 
 */

// id 정규식 검사 : 정규식변수.test(value) ==> true, false
$('#id').on('keyup',function(){
	id = $('#id').val().trim();
	regid = /^[a-z]{1}[a-zA-Z0-9]{3,11}$/;

	if(!(regid.test(id))){
		regfail(this, "올바른 형식이 아닙니다.");
	}else{
		$(this).parents('.form-group').find('.msg').html("");
	}
});

// 이름 정규식 검사
$('#name').on('keyup',function(){
	name = $(this).val().trim();
	regname = /^[가-힣]{2,5}$/;
	
	if(!(regname.test(name))){
		regfail(this, "올바른 형식이 아닙니다.");
	}else{
		regpass(this);
	}
});

// 비밀번호 정규식 검사 : 영문 소/대문자, 특수문자, 숫자가 반드시 하나 이상 입력
$('#pass').on('keyup',function(){
	pass = $(this).val().trim();
	// 전방탐색 / 무엇(?=기준) ?:앞, 전방
	regpw = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_+~]).{4,10}$/;
	
	if(!(regpw.test(pass))){
		regfail(this, "올바른 형식이 아닙니다.");
	}else{
		regpass(this);
	}
});
// keyup, focus/blur

// 비밀번호 일치 확인
$('#pass2').on('keyup',function(){
	pass = $('#pass').val().trim();
	pass2 = $(this).val().trim();
	
	if(pass == pass2){
		regpass(this);
	}else{
		regfail(this, "비밀번호가 일치하지 않습니다.");
	}
});

// 전화번호 정규식 검사 : 3-4-4
$('#hp').on('keyup',function(){
	hp = $(this).val().trim();
	reghp = /^\d{3}-\d{4}-\d{4}$/;
	
	if(!(reghp.test(hp))){
		regfail(this, "올바른 형식이 아닙니다.");
	}else{
		regpass(this);
	}
});

// email 정규식 검사 : wkdtjdqh@wkd.com / wkdtjdqh@wkd.co.kr
$('#email').on('keyup',function(){
	mail = $(this).val().trim();
//	regmail = /^[a-z][a-zA-Z0-9]{4,14}@[a-z]{2,10}.(com|co.kr|or.kr)$/;
	regmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
	if(!(regmail.test(mail))){
		regfail(this, "올바른 형식이 아닙니다.");
	}else{
		regpass(this);
	}
});

// 생년월일 : 10살 이상
$('#birth').on('change',function(){
	birth = $(this).val().substring(0, 4);
	nowYear = new Date().getFullYear();
	regage = nowYear - birth;
	
	if(regage < 10){
		regfail(this, "10살 이상만 가능합니다.");
	}else{
		regpass(this);
	}
});

// 정규식 통과 메서드
function regpass(target){
	sp = $(target).parents('.form-group').find('.sp');
	sp.empty();
	$('<img>',{
		'src' : '../images/ck.png',
		'width' : '15px',
		'height' : '15px'
	}).appendTo(sp);
	
	$(target).parents('.form-group').find('.msg').html("");
}

// 정규식 실패메서드
function regfail(target, msg){
	// 정규식과 다르면 메시지 출력
	$(target).parents('.form-group').find('.msg').html(msg).css('color','red');
	sp = $(target).parents('.form-group').find('.sp');
	sp.empty();
	return false;
}