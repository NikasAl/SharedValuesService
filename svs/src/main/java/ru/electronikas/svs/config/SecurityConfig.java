package ru.electronikas.svs.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	@Qualifier("userDetailsService")
	UserDetailsService userDetailsService;

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
        auth.inMemoryAuthentication().withUser("user").password("1111").roles("USER");
        auth.inMemoryAuthentication().withUser("customer").password("1111").roles("CUSTOMER");
        auth.inMemoryAuthentication().withUser("superadmin").password("1111").roles("SUPERADMIN");
    }

	@Override
	protected void configure(HttpSecurity http) throws Exception {

//        http.authorizeRequests()
//                .antMatchers("/parameter").permitAll()
//                .anyRequest().authenticated().and().csrf().disable().

//        http.authorizeRequests()
//                .antMatchers("/index**").permitAll()
//                .anyRequest().authenticated().and().csrf();

//        http.authorizeRequests()
//                .antMatchers("/showmeall").permitAll()
//                .anyRequest().authenticated().and().csrf().disable();


          http.authorizeRequests().antMatchers("/admin/**")
			.access("hasRole('ROLE_ADMIN')").and().formLogin()
			.loginPage("/login").failureUrl("/login?error")
				.usernameParameter("username")
				.passwordParameter("password")
				.and().logout().logoutSuccessUrl("/login?logout")
				.and().csrf()
				.and().exceptionHandling().accessDeniedPage("/403");

//        http.authorizeRequests()
//                .antMatchers("/promote/**").access("hasRole('ROLE_CUSTOMER')")
//                .and().formLogin().defaultSuccessUrl("/login", false);
//
//        http.authorizeRequests()
//                .antMatchers("/parameter/**").permitAll().and().csrf();
	}
	
	@Bean
	public PasswordEncoder passwordEncoder(){
		PasswordEncoder encoder = new BCryptPasswordEncoder();
		return encoder;
	}

    @Override
    public void configure(WebSecurity web) throws Exception {
        web
                .ignoring()
                .antMatchers("/parameter/**")
                .and()
                .ignoring()
                .antMatchers("/parameters/**"); // #3

    }
	
}