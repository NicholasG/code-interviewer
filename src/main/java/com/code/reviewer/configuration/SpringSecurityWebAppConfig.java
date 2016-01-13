package com.code.reviewer.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import javax.sql.DataSource;

/**
 * Created by NicholasG on 02.01.2016.
 */
@Configuration
@EnableWebSecurity
public class SpringSecurityWebAppConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    DataSource dataSource;

    @Autowired
    public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication().dataSource(dataSource)
                .usersByUsernameQuery(
                        "select username, password, isActive from users where username=?")
                .authoritiesByUsernameQuery(
                        "select username, role from users where username=?");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                        .antMatchers("/**").permitAll()
//                    .antMatchers("/#/participants").hasAuthority("ROLE_MANAGER")
//                    .antMatchers("/**").authenticated()
                .and()
                    .formLogin()
//                    .loginPage("/login")
                    .permitAll()
                .and()
                    .logout()
                    .permitAll();
    }
}