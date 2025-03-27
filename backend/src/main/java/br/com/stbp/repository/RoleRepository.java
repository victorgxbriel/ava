package br.com.stbp.repository;

import br.com.stbp.model.entity.Role;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface RoleRepository extends BaseRepository<Role> {

    Optional<Role> findRoleByName(String name);
}
