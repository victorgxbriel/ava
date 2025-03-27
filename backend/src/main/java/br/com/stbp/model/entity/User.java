package br.com.stbp.model.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.time.ZonedDateTime;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

@Entity
@Table(name = "users")
@Getter
@Setter
public class User implements UserDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_USER")
    @SequenceGenerator(name = "SEQ_USER", sequenceName = "user_iduser_seq", allocationSize = 1)
    @Column(name = "id_user")
    private Long id;

    @Column(unique = true, nullable = false)
    private String username;

    @Column(nullable = false)
    private String password;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
            name = "users_roles",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id")
    )
    private Set<Role> roles = new HashSet<>();

    @OneToOne
    @JoinColumn(name = "discente_id")
    private Discente discente;

    @OneToOne
    @JoinColumn(name = "docente_id")
    private Docente docente;

    @Column(nullable = false)
    private boolean active = true;

    @CreatedDate
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "created_at", nullable = false, updatable = false)
    private ZonedDateTime creationDate;

    @LastModifiedDate
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "updated_at")
    private ZonedDateTime updateDate;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return roles.stream()
                .map(role -> new SimpleGrantedAuthority(role.getName()))
                .collect(Collectors.toSet());
    }

    @PrePersist
    protected void onCreate() {
        this.creationDate = ZonedDateTime.now();
    }

    @PreUpdate
    protected void onUpdate() {
        this.updateDate = ZonedDateTime.now();
    }
}
