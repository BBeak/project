
let flag = 0;


$(document).ready(function(){
    addEvents()
    
    });


/**이벤트 연결 함수 */
function addEvents(){
/**회원가입 이메일 체크 */
$(".b-button").on("onclick",function(event){
    const target = $(event.target);
    const targetName = target.attr("placeholder");

    const email = $("input[placeholder=Email]").val();
    const password = $("input[placeholder=Password").val();
    /**이메일 정규 표현식 */
    const regExp = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.[a-zA-Z]{2,4}$/;
/**
 * 이메일 양식 검증 @.
 * 비밀번호가 5글자 이상인지 확인
 */
switch(targetName){
    case "Email":
        /** 이메일일 경우 이쪽이 실행됨 */

        if(regExp.test(email)===false){
            
           alert( "잘못된 이메일 양식입니다.");
           }

        /** 비밀번호의 경우 */
    case "Password":
        if(password.length <= 5){
            alret("비밀번호는 5글자 이상이어야합니다.")
        }
        
    }



})
/** 화면 전환 */


$('.signin').on("click", function(){
    if(flag === 0){
    $(".move").addClass("moving");
    $(".move").removeClass("start");

    $(".form").addClass("movingForm");
    $(".form").removeClass("srartForm");
    $('.hello').show();
    $('.welcome').hide(); 
    $(".move").css("background-position", "right");
    
    setTimeout(function(){
        $(".title").text("Sigh-in");
        $(".light").text("use your email account");
        $(".name").hide();
        $("p-button").text("SIGN IN");
        $(".button").html(`<button type="button" value="Signin" class="b-button normal flag">SIGN IN</button>`);
        $(".forgot").show();
        $(".form").css("border-radious","10px 0px 0px 10px");
        $(".move").css("border-radious","0px 10px 10px 0px");
        
        
        
    }, 200);

    flag = 1;
    }else{
        $(".move").removeClass("moving");
    $(".move").addClass("start");    
    $(".form").removeClass("movingForm");
    $(".form").addClass("srartForm");

    $('.hello').hide();
    $('.welcome').show();    
    $(".move").css("background-position", "left");
    
    setTimeout(function(){
        $(".title").text("Create your Account");
        $(".light").text("use your email account for registration");
        $(".name").show();
        $("p-button").text("SIGN UP");
        $(".button").html(`<button type="button" value="Signup" class="b-button normal flag">SIGN UP</button>`);
        $(".forgot").hide();
        $(".form").css("border-radious","10px 0px 0px 10px");
        $(".move").css("border-radious","0px 10px 10px 0px");
    }, 200) 
    flag = 0;
} 
})
}
