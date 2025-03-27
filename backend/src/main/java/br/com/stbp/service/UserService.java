package br.com.stbp.service;

import br.com.stbp.exception.ResourceAlreadyExistsException;
import br.com.stbp.exception.ResourceNotFoundException;
import br.com.stbp.model.entity.Discente;
import br.com.stbp.model.entity.Docente;
import br.com.stbp.model.entity.Role;
import br.com.stbp.model.entity.User;
import br.com.stbp.repository.DiscenteRepository;
import br.com.stbp.repository.DocenteRepository;
import br.com.stbp.repository.RoleRepository;
import br.com.stbp.repository.UserRepository;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.Optional;
import java.util.Set;

@Service
public class UserService {

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final DiscenteRepository discenteRepository;
    private final DocenteRepository docenteRepository;
    private final PasswordEncoder passwordEncoder;

    public UserService(UserRepository userRepository,
                       RoleRepository roleRepository,
                       DiscenteRepository discenteRepository,
                       DocenteRepository docenteRepository,
                       PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.discenteRepository = discenteRepository;
        this.docenteRepository = docenteRepository;
        this.passwordEncoder = passwordEncoder;
    }

    public void register(String email, String password, String userType){
        if(userRepository.existsByUsername(email)) {
            throw new ResourceAlreadyExistsException("Já existe um usuário com o e-mail: " + email);
        }

        User user = new User();
        String encodedPassword = passwordEncoder.encode(password);
        user.setPassword(encodedPassword);
        user.setUsername(email);
        Set<Role> roles = new HashSet<>();

        if(userType.equalsIgnoreCase("DISCENTE")) {
            Discente discente = findDiscenteByEmail(email);
            roles.add(roleRepository.findRoleByName("ROLE_DISCENTE").orElseThrow(() -> new ResourceNotFoundException("Role não encontrada")));
            user.setDiscente(discente);
            user.setRoles(roles);
        } else if(userType.equalsIgnoreCase("DOCENTE")) {
            Docente docente = findDocenteByEmail(email);
            roles.add(roleRepository.findRoleByName("ROLE_DOCENTE").orElseThrow(() -> new ResourceNotFoundException("Role não encontrada")));
            user.setRoles(roles);
            user.setDocente(docente);
        }

        userRepository.save(user);
    }

    private Discente findDiscenteByEmail(String email){
        return discenteRepository.findByEmail(email)
                .orElseThrow(() -> new ResourceNotFoundException("Discente não encontrado com o e-mail: " + email));

    }

    private Docente findDocenteByEmail(String email) {
        return docenteRepository.findDocenteByEmail(email)
                .orElseThrow(() -> new ResourceNotFoundException("Docente não encontrado com o e-mail: " + email));
    }

    public Optional<User> findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    public boolean matchesPassword(String rawpassword, String encodedPassword) {
        return passwordEncoder.matches(rawpassword, encodedPassword);
    }

    public void resetPassword(String username, String newPassword) {
        User user = findByUsername(username).orElseThrow(() -> new UsernameNotFoundException("Usuário não encontrado."));
        user.setPassword(passwordEncoder.encode(newPassword));

        userRepository.save(user);
    }

    public boolean existsByUsername(String username) { return userRepository.existsByUsername(username); }
}
