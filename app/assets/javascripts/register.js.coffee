# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
chkName = ->
  name = $.trim($("#register_form_name").val())
  if name is "" # 为空
    return 0
  1
chkLength =(element) ->
  length = element.val().length

$ ->
  $("#register_form_name").bind "focus",->
    retname = chkName()
    $("#register_form_name").attr("class", "txt2_bg");
    if retname is 0
      $("#divName_info").show()
      vipurl = "please input a name you would like"
      $("#divName_info").empty()
      $("#divName_info").append ""+vipurl
    else
      $("#divName_info").empty()
    false
  $("#register_form_name").bind "blur",->
    retname = chkName()
    $("#register_form_name").attr("class", "txt1_bg");
    if retname is 0
      $("#divName_info").show()
      vipurl = "please input a name"
      $("#divName_info").empty()
      $("#divName_info").append ""+vipurl
    else
      $("#divName_info").empty()
    false


$ ->
  $("[data-validate]").blur ->
    $this = $(this)
    $.get($this.data("validate"),
      name: $this.val()
    ).success(->
      $("#divName_info").empty()
      $("#divName_info").append ""+"can"
      return
    ).error ->
      $("#divName_info").empty()
      $("#divName_info").append ""+"exist"
      return


  $('[data-length').focus ->
    length = chkLength($(this))
    if length < 6 || length > 15
      $("#divPassword1_info").empty()
      $("#divPassword1_info").append "长度不得小于6，不得超过15"
    else
      $("#divPassword1_info").empty()
  $('[data-confirmation]').blur ->
    if $("#register_form_password").val() is $(this).val()
      $("#divPassword2_info").empty()
      $("#divPassword2_info").append "xiangtong"
    else
      $("#divPassword2_info").empty()
      $("#divPassword2_info").append "buxiangtong"
    return
  $('[data-email]').blur ->
    email_reg = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/
    if email_reg.test($("#register_form_email").val())
      $("#divMail_info").empty()
      $("#divMail_info").append "fine"
    else
      $("#divMail_info").empty()
      $("#divMail_info").append "mail format invalid!"
    return
return