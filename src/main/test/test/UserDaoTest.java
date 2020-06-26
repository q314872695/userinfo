package test;

import cn.hutool.extra.spring.SpringUtil;
import cn.itcast.config.SpringConfig;
import cn.itcast.domain.User;
import cn.itcast.service.UserService;
import com.github.javafaker.Faker;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Locale;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = SpringConfig.class)
public class UserDaoTest {

    @Test
    public void add(){
        UserService userService = SpringUtil.getBean("userService");
        Faker faker = new Faker(new Locale("zh-CN"));
        for (int i = 0; i < 100; i++) {
            User u = new User();
            u.setName(faker.name().fullName());
            u.setGender(faker.number().randomDigit()%2==0?"男":"女");
            u.setAddress(faker.address().cityName());
            u.setAge(faker.number().numberBetween(1, 100));
            u.setQq(faker.number().digits(9));
            u.setEmail(faker.number().digits(9) + "@qq.com");
            System.out.println(u);
            userService.add(u);
        }
    }
}
