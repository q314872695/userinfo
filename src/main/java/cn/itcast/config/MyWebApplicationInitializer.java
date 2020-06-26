package cn.itcast.config;

import cn.hutool.log.StaticLog;
import cn.itcast.web.filter.LoginFilter;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;

import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;

// 等价于web.xml配置文件
public class MyWebApplicationInitializer implements WebApplicationInitializer {
    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        // Load Spring web application configuration
        AnnotationConfigWebApplicationContext ac = new AnnotationConfigWebApplicationContext();
        ac.register(SpringConfig.class);
        ac.refresh();
        StaticLog.info("初始化spring容器");

        // 添加登录过滤器
        FilterRegistration.Dynamic loginfilter = servletContext.addFilter("loginfilter", new LoginFilter());
        loginfilter.addMappingForUrlPatterns(null,false,"/*");
    }
}
