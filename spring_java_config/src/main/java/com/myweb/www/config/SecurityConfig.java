//package com.myweb.www.config;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.security.web.SecurityFilterChain;
//
//@EnableWebSecurity
//public class SecurityConfig {
//
//	@Bean // 패스워드 인코더
//	public PasswordEncoder passwordEncoder() {
//		return new BCryptPasswordEncoder();
//	}
//	// 인증
//    @Autowired
//    public void configureGlobal(AuthenticationManagerBuilder auth) 
//      throws Exception {
//        auth.inMemoryAuthentication().withUser("user")
//          .password(passwordEncoder().encode("password")).roles("USER");
//    }
//    //http security 활성화
//    @Bean
//    public SecurityFilterChain filterchain(HttpSecurity http) throws Exception{
//    	http.authorizeRequests()
//    	.anyRequest().authenticated().and().httpBasic();
//    	return http.build();
//    }
//    //로그인
//    @Bean
//    public SecurityFilterChain filterlogin(HttpSecurity http) throws Exception{
//    	http.authorizeRequests()
//    	.and().formLogin()
//    	.loginPage("/user/login").permitAll();
//    	return http.build();
//    }
//    //로그아웃
//    @Bean
//    public SecurityFilterChain filterlogout(HttpSecurity http) throws Exception{
//    	http.logout();
//    	return http.build();
//    }
//}
