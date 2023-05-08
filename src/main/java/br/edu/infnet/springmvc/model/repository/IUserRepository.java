package br.edu.infnet.springmvc.model.repository;

import br.edu.infnet.springmvc.model.negocio.User;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IUserRepository extends CrudRepository<User, Integer>
{
    @Query("from User u where u.email=:email and u.senha=:senha")
    User autenticacao(String email, String senha);

    @Query("from User")
    List<User> obterLista(Sort by);
}
