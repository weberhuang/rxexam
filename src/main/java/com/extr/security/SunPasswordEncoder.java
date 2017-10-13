package com.extr.security;

import org.springframework.dao.DataAccessException;
import org.springframework.security.authentication.encoding.PasswordEncoder;

/**
 * @ClassName SunPasswordEncoder
 * @Description TODO(这里用一句话描述这个类的作用)
 * @author Administrator
 * @Date 2017年9月21日 下午3:52:01
 * @version 1.0.0
 */
public class SunPasswordEncoder implements PasswordEncoder {
  //@实现加密的方法，既将明文转换为密文的方法
    public String encodePassword(String rawPass, Object salt)
      throws DataAccessException {
    
     return rawPass;
    }

    //@验证密码是否有效的方法，返回'true'则登录成功

    public boolean isPasswordValid(String encPass, String rawPass, Object salt)
      throws DataAccessException {
 
     return true;
    }
}
