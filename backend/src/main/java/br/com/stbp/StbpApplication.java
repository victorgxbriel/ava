package br.com.stbp;

import io.github.cdimascio.dotenv.Dotenv;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication(scanBasePackages = "br.com.stbp")
public class StbpApplication {

	public static void main(String[] args) {

		Dotenv dotenv = Dotenv.load();
		// Define as variáveis como propriedades do sistema, assim o Spring Boot pode resolvê-las
		System.setProperty("DB_USERNAME", dotenv.get("DB_USERNAME"));
		System.setProperty("DB_PASSWORD", dotenv.get("DB_PASSWORD"));

		SpringApplication.run(StbpApplication.class, args);
	}

}
