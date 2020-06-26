package cn.itcast.web.filter;

import cn.hutool.log.StaticLog;
import cn.itcast.domain.LoginUser;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginFilter implements Filter  {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        // 中文乱码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        HttpServletRequest httpServletRequest=(HttpServletRequest) request;
        String requestURI = httpServletRequest.getRequestURI();
        StaticLog.debug("uri:{}",requestURI);
        // 静态资源直接放行
        if (requestURI.endsWith(".js") || requestURI.endsWith(".css")) {
            StaticLog.debug("静态资源放行放行");
            chain.doFilter(request, response);
            return ;
        }
        // 登录页面与验证码放行
        if (requestURI.contains("login.jsp")||requestURI.contains("checkCodeServlet")||requestURI.contains("loginServlet")) {
            StaticLog.debug("登录页面与验证码放行");
            chain.doFilter(request, response);
            return ;
        }
        // 获取session
        HttpSession session = httpServletRequest.getSession();
        LoginUser loginUser = (LoginUser) session.getAttribute("user");
        if (loginUser == null) {
            // 如果没有登录则跳转登录页面
            ((HttpServletResponse) response).sendRedirect("login.jsp");
        } else {
            chain.doFilter(request,response);
        }
    }

    @Override
    public void destroy() {

    }
}
