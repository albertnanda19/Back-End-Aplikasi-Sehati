package com.sehati.backend_sehati;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.flywaydb.core.Flyway;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import javax.sql.DataSource;

@SpringBootApplication
@EnableConfigurationProperties
public class BackendSehatiApplication {

	public static void main(String[] args) {
		SpringApplication.run(BackendSehatiApplication.class, args);
	}

	@Bean
	public CommandLineRunner flywayMigrationInfo(@Autowired DataSource dataSource) {
		return args -> {
			Flyway flyway = Flyway.configure()
					.dataSource(dataSource)
					.load();
			System.out.println("Current Flyway schema version: " +
					(flyway.info().current() != null ? flyway.info().current().getVersion().toString()
							: "No migrations executed yet"));
		};
	}
}
