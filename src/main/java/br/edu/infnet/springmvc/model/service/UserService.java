package br.edu.infnet.springmvc.model.service;

import br.edu.infnet.springmvc.model.negocio.User;
import br.edu.infnet.springmvc.model.repository.IUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService
{
    @Autowired
    private IUserRepository userRepository;

    public User autenticacao(String email, String senha) {
        return userRepository.autenticacao(email, senha);
    }

    public void incluir(User user) {
        userRepository.save(user);
    }

    public void excluir(Integer id) {
        userRepository.deleteById(id);
    }

    public List<User> obterLista() {
        return (List<User>)userRepository.obterLista(Sort.by(Sort.Direction.ASC, "nome"));
    }
}

