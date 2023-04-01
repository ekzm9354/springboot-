package JavaProject01;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;

@ComponentScan("com.JavaProject01.controller")
@MapperScan("com.JavaProject01.mapper")
@SpringBootApplication
public class JavaProject01Application {

	public static void main(String[] args) {
		SpringApplication.run(JavaProject01Application.class, args);
	}
}
