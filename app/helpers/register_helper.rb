module RegisterHelper
  def validate_user_data user
    valid_flag = true
    validate_string = ''
    if User.where(name: user.name).count > 0
      validate_string += "name is exist!\r"
      valid_flag = false
    end
    if user.password.length < 6
      validate_string += "password's length must be greater than 6!\r"
      valid_flag = false
    end
    email_reg = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/
    if user.email.match(email_reg).blank?
      validate_string += "email's format is invalid!\r"
      valid_flag = false
    end
    return valid_flag,validate_string
  end
end
