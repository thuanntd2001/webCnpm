package springboot;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableTransactionManagement
public class Application {

	public static void main(String[] args) throws InterruptedException {
		//Thread.sleep(3600000);

		SpringApplication.run(Application.class, args);

	}

}
