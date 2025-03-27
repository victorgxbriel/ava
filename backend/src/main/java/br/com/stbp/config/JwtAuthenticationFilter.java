package br.com.stbp.config;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.GenericFilterBean;

import java.io.IOException;

public class JwtAuthenticationFilter extends GenericFilterBean {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        var auth = SecurityUtils.getAuthentication((HttpServletRequest) servletRequest);
        SecurityContextHolder.getContext().setAuthentication(auth);
        filterChain.doFilter(servletRequest, servletResponse);
    }
}
