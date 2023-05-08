package br.edu.infnet.springmvc.model.repository;

import br.edu.infnet.springmvc.model.negocio.File;
import java.util.List;

import br.edu.infnet.springmvc.model.negocio.User;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface IFileRepository extends CrudRepository<File, Integer>
{
    @Query(value="SELECT * FROM files WHERE id_usuario = :usuario and excluido = :excluido and (file_name LIKE CONCAT('%', :keyword, '%') or description LIKE CONCAT('%', :keyword, '%') ) "
            , nativeQuery=true)

    public List<File> procurar(@Param("usuario") User usuario,@Param("excluido") String excluido, @Param("keyword") String keyword);
}