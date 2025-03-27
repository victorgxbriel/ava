package br.com.stbp.controller.dto;

import lombok.Getter;

@Getter
public class ResetPasswordRequestDto {
    private String email;
    private String token;
    private String newPassword;

    public boolean hasEmail() {
        return email.isEmpty();
    }
}
