package br.com.stbp.model.entity;

import jakarta.persistence.*;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.time.ZonedDateTime;
import java.util.Objects;

@MappedSuperclass
@EntityListeners({ AuditingEntityListener.class })
@Getter
@Setter
public abstract class BaseEntity implements Serializable {


    @CreatedDate
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "created_at", nullable = false, updatable = false)
    protected ZonedDateTime creationDate;

    @LastModifiedDate
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "updated_at")
    protected ZonedDateTime updateDate;

    protected boolean active = true;

    public abstract Long getId();

    public abstract void setId(Long id);

    @PrePersist
    protected void onCreate() {
        this.creationDate = ZonedDateTime.now();
    }

    @PreUpdate
    protected void onUpdate() {
        this.updateDate = ZonedDateTime.now();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        BaseEntity that = (BaseEntity) o;
        return active == that.active && Objects.equals(getId(), that.getId())
                && Objects.equals(creationDate, that.creationDate) && Objects.equals(updateDate, that.updateDate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(getId(), creationDate, updateDate, active);
    }

}
