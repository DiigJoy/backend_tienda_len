package com.tienda.len.api_gateway.config;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.web.authentication.AuthenticationFilter;

@Configuration
public class GatewayConfig {

    @Bean
    public FilterRegistrationBean<AuthenticationFilter> authFilter(AuthenticationFilter authenticationFilter) {
        FilterRegistrationBean<AuthenticationFilter> registrationBean = new FilterRegistrationBean<>();
        registrationBean.setFilter(authenticationFilter);
        registrationBean.setOrder(1); // puedes cambiar el orden si es necesario
        return registrationBean;
    }

    // Agrega otros filtros si los tienes personalizados
}
