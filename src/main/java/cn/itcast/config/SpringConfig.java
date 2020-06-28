package cn.itcast.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

// spring配置类
@Configuration
@ComponentScan(value = {"cn.itcast","cn.hutool.extra.spring"})
public class SpringConfig {

}
