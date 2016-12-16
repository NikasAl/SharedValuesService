
//Р°РІС‚РѕСЂРёР·Р°С†РёСЏ
function show(mow) {
    if(mow=='close') {
        document.getElementById('shadow').style.display="none";
        document.getElementById('form').style.display="none";
    }
    else {
        document.getElementById('shadow').style.display="block";
        document.getElementById('form').style.display="block";
        document.getElementById('auth_error').style.display="none";
    }
}
//Р РµРіРёСЃС‚СЂР°С†РёСЏ
function color(id,fill) {
    document.getElementById(id).style.border="1px solid "+fill;
    return true;
}
function check() {
    valid = true;
    if (document.reg_form.pass.value != document.reg_form.cpasswd.value || document.reg_form.pass.value == '' || document.reg_form.cpasswd.value == ''){
        color("cpasswd", "#ff6600");
        color("reg_pass", "#ff6600");
        valid = false;
    }
    else {
        color("reg_pass", "#c2c2c2");
        color("cpasswd", "#c2c2c2");
    }
    if (document.reg_form.name.value == ''){
        color("name", "#ff6600");
        valid = false;
    }
    else {color("name", "#c2c2c2");}

    if (document.reg_form.login.value == ''){
        color("reg_login", "#ff6600");
        valid = false;
    }

    else {color("login", "#c2c2c2");}

    if (document.reg_form.lic.checked == false ){
        alert ( "Р’С‹ РЅРµ РїСЂРёРЅСЏР»Рё СѓСЃР»РѕРІРёСЏ РїРѕР»СЊР·РѕРІР°С‚РµР»СЊСЃРєРѕРіРѕ СЃРѕРіР»Р°С€РµРЅРёСЏ!" );
        valid = false;
    }

    return valid;
}
function auth_check() {
    valid = true;
    if (document.auth_form.pass.value == '' || document.auth_form.auth.value == '')
    {
        alert ( "Р’РІРµРґРёС‚Рµ СЃРІРѕР№ Р»РѕРіРёРЅ Рё РїР°СЂРѕР»СЊ!" );
        valid = false;
    }
    return valid;
}