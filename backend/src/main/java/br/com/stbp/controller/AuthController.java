package br.com.stbp.controller;

import br.com.stbp.config.SecurityUtils;
import br.com.stbp.controller.dto.JwtResponseDto;
import br.com.stbp.controller.dto.LoginRequestDto;
import br.com.stbp.controller.dto.RegisterRequestDto;
import br.com.stbp.controller.dto.ResetPasswordRequestDto;
import br.com.stbp.model.entity.User;
import br.com.stbp.service.PasswordResetService;
import br.com.stbp.service.UserService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("auth")
public class AuthController {

    private final UserService userService;
    private final PasswordResetService passwordResetService;

    public AuthController(UserService userService,
                          PasswordResetService passwordResetService) {
        this.userService = userService;
        this.passwordResetService = passwordResetService;
    }

    @PostMapping("/register")
    public ResponseEntity<?> register(@RequestBody RegisterRequestDto request) {
        userService.register(request.getEmail(), request.getPassword(), request.getUserType());
        return ResponseEntity.ok("Usuário registrado com sucesso");
    }

    @PostMapping("/recover")
    public ResponseEntity<?> recoverPassword(@RequestBody Map<String, String> payload) {
        String email = payload.get("email");
        if(userService.existsByUsername(email)){
            passwordResetService.createPasswordResetCode(email);
            return ResponseEntity.ok("Código enviado para o e-mail informado: " + email);
        }
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(email);
    }

    @PostMapping("/reset-password")
    public ResponseEntity<?> resetPassword(@RequestBody ResetPasswordRequestDto request) {
        if(request.hasEmail()){
            boolean valid = passwordResetService.validatePasswordResetCode(request.getEmail(), request.getToken());
            if(!valid) {
                return ResponseEntity.badRequest().body("Código inválido ou expirado.");
            }
        }
        userService.resetPassword(request.getEmail(), request.getNewPassword());

        return ResponseEntity.ok("Senha atualizada com sucesso.");
    }

    @PostMapping("/login")
    public ResponseEntity<String> login(@RequestBody LoginRequestDto request){
        User user = userService.findByUsername(request.getUsername())
                .orElseThrow(() -> new UsernameNotFoundException("Usuário não encontrado"));

        if(!userService.matchesPassword(request.getPassword(), user.getPassword())) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Senha incorreta");
        }

        String token = SecurityUtils.buildJwt(user.getUsername());
        return ResponseEntity.ok(token);
    }

}
