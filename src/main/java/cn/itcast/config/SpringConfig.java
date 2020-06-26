package cn.itcast.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@ComponentScan(value = {"cn.itcast","cn.hutool.extra.spring"})
@Import(cn.hutool.extra.spring.SpringUtil.class)
public class SpringConfig {

}
