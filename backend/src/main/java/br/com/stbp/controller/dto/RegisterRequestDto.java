package br.com.stbp.controller.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RegisterRequestDto {
    private String email;
    private String password;
    private String userType;
}
