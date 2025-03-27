package br.com.stbp.controller.dto;

import lombok.Getter;

@Getter
public class JwtResponseDto {
    private String token;

    public JwtResponseDto(String token) {
        this.token = token;
    }
}
