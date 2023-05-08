package br.edu.infnet.springmvc.model.service;

import br.edu.infnet.springmvc.model.negocio.File;
import br.edu.infnet.springmvc.model.negocio.User;
import br.edu.infnet.springmvc.model.repository.IFileRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FileService {
    
    @Autowired
    private IFileRepository fileRepository;

    public void salvar(File file) {
        fileRepository.save(file);
    }
    
    public List<File> consultar() {
        return (List<File>) fileRepository.findAll();
    }
    
    public File consultarPorId(Integer id) {
        return fileRepository.findById(id).get();
    }
    
    public void excluir(Integer id) {
        fileRepository.deleteById(id);
    }
    
    public List<File> procurar(User usuario , String keyword) {
        return fileRepository.procurar(usuario,"N", keyword);
    }

    public List<File> procurarLixeira(User usuario,String keyword) {
        return fileRepository.procurar(usuario,"S", keyword);
    }
}
