package br.edu.infnet.springmvc;

import br.edu.infnet.springmvc.model.negocio.File;
import br.edu.infnet.springmvc.model.repository.IFileRepository;
import java.util.List;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
    
    @Bean
    public CommandLineRunner teste(IFileRepository fileRepository) {
        return (String[] args) -> {
            
            String keyword = "a";
            List<File> lista = fileRepository.procurar(null,"N", keyword);
            System.out.println(lista);
        };
    }        
}
